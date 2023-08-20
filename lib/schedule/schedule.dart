import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fox_fit_schedule/schedule/bloc/schedule_bloc.dart';
import 'package:fox_fit_schedule/schedule/common/assets.dart';
import 'package:fox_fit_schedule/schedule/common/layout.dart';
import 'package:fox_fit_schedule/schedule/components/categories_switcher.dart';
import 'package:fox_fit_schedule/schedule/components/dates_row.dart';
import 'package:fox_fit_schedule/schedule/components/hover_opacity.dart';
import 'package:fox_fit_schedule/schedule/components/lessons_grid.dart';
import 'package:fox_fit_schedule/schedule/components/loading_indicator.dart';
import 'package:fox_fit_schedule/schedule/components/timelapse.dart';
import 'package:fox_fit_schedule/schedule/models/category_model.dart';

const clubId = '6bba8b26-44f0-4229-8bca-c9ca7d676f24';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  late Layout _layout;
  late final ScrollController _timelapseScheduleController;
  late final ScrollController _verticalScheduleController;
  late final ScrollController _horizontalScheduleController;

  var _isAnimating = false;

  @override
  void initState() {
    super.initState();

    _timelapseScheduleController = ScrollController();
    _verticalScheduleController = ScrollController();
    _horizontalScheduleController = ScrollController(initialScrollOffset: 980);

    context.read<ScheduleBloc>().add(const ScheduleEvent.fetchData(clubId: clubId));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _layout = Layout.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleBloc, ScheduleState>(
      builder: (context, state) {
        return state.map(
          fetching: (_) => const LoadingIndicator(),
          failure: (_) => const SizedBox(),
          fetched: (state) {
            final startDate = state.startDateSchedule ?? DateTime.now();

            return Scaffold(
              body: Container(
                padding: const EdgeInsets.all(20),
                color: _layout.theme.card,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        _layout.intl.schedule_preview,
                        style: _layout.fonts.styleB20.copyWith(color: _layout.theme.text),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: CategoriesSwitcher(
                        categories: state.categories,
                        chosenCategory: state.chosenCategory ?? state.categories.first,
                        onTapCategory: _chooseCategory,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Timelapse(
                          mainController: _timelapseScheduleController,
                          attachedController: _verticalScheduleController,
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          width: 980,
                          child: Stack(
                            children: [
                              NotificationListener<ScrollNotification>(
                                onNotification: _onScroll,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  controller: _horizontalScheduleController,
                                  physics: const NeverScrollableScrollPhysics(),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      DatesRow(startDate: startDate),
                                      LessonsGrid(
                                        previewLessons: state.previewLessons,
                                        startDate: startDate,
                                        mainController: _verticalScheduleController,
                                        attachedController: _timelapseScheduleController,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 18),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    HoverOpacity(
                                      onTap: () => _animateScheduleLeft(currentStartDate: startDate),
                                      child: SvgPicture.asset(Assets.icons.arrowInCircleLeft),
                                    ),
                                    HoverOpacity(
                                      onTap: () => _animateScheduleRight(currentStartDate: startDate),
                                      child: SvgPicture.asset(Assets.icons.arrowInCircleRight),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  /// Смена категории.
  void _chooseCategory(CategoryModel category) {
    context.read<ScheduleBloc>().add(ScheduleEvent.chooseCategory(category: category));
  }

  /// Отслеживание горизонтального скролла.
  bool _onScroll(ScrollNotification notification) {
    if (notification is ScrollStartNotification) {
      setState(() => _isAnimating = true);
    } else if (notification is ScrollEndNotification) {
      setState(() => _isAnimating = false);
    }

    return true;
  }

  /// Горизонтальный скролл влево.
  Future<void> _animateScheduleLeft({required DateTime currentStartDate}) async {
    final scheduleBloc = context.read<ScheduleBloc>();

    if (!_isAnimating) {
      await _horizontalScheduleController.animateTo(
        0,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
      final startDate = DateTime(currentStartDate.year, currentStartDate.month, currentStartDate.day - 7);
      scheduleBloc.add(ScheduleEvent.changeStartDateSchedule(clubId: clubId, startDate: startDate));

      _horizontalScheduleController.jumpTo(980);
    }
  }

  /// Горизонтальный скролл вправо.
  Future<void> _animateScheduleRight({required DateTime currentStartDate}) async {
    final scheduleBloc = context.read<ScheduleBloc>();

    if (!_isAnimating) {
      await _horizontalScheduleController.animateTo(
        980 * 2,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
      final startDate = DateTime(currentStartDate.year, currentStartDate.month, currentStartDate.day + 7);
      scheduleBloc.add(ScheduleEvent.changeStartDateSchedule(clubId: clubId, startDate: startDate));
      _horizontalScheduleController.jumpTo(980);
    }
  }
}
