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
import 'package:uni_links/uni_links.dart';

late final String _clubId;

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

    _extractCode();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _layout = Layout.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _layout.theme.card,
      body: BlocBuilder<ScheduleBloc, ScheduleState>(
        builder: (context, state) {
          return state.map(
            fetching: (_) => const Center(child: LoadingIndicator()),
            failure: (_) => const Center(child: Text('Ошибка загрузки расписания')),
            fetched: (state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: _layout.theme.card,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CategoriesSwitcher(
                            categories: state.schedule.categories,
                            chosenCategory: state.chosenCategory,
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
                                          DatesRow(startDate: state.startDateSchedule),
                                          LessonsGrid(
                                            lessons: state.schedule.lessons,
                                            startDate: state.startDateSchedule,
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
                                          onTap: () => _animateScheduleLeft(currentStartDate: state.startDateSchedule),
                                          child: SvgPicture.asset(Assets.icons.arrowInCircleLeft),
                                        ),
                                        HoverOpacity(
                                          onTap: () => _animateScheduleRight(currentStartDate: state.startDateSchedule),
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
                ],
              );
            },
          );
        },
      ),
    );
  }

  /// Получение кода из ссылки.
  Future<void> _extractCode() async {
    final link = await getInitialLink();
    final code = link?.split('club_id=').last.split('&').first ?? '';
    _clubId = code;
    if (!mounted) return;
    context.read<ScheduleBloc>().add(ScheduleEvent.fetchSchedule(clubId: _clubId, startDate: DateTime.now()));
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
      scheduleBloc.add(ScheduleEvent.changeStartDateSchedule(clubId: _clubId, startDate: startDate));

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
      scheduleBloc.add(ScheduleEvent.changeStartDateSchedule(clubId: _clubId, startDate: startDate));
      _horizontalScheduleController.jumpTo(980);
    }
  }
}
