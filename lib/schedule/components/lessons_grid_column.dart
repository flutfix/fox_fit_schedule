import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fox_fit_schedule/schedule/bloc/schedule_bloc.dart';
import 'package:fox_fit_schedule/schedule/common/iterable_extension.dart';
import 'package:fox_fit_schedule/schedule/common/layout.dart';
import 'package:fox_fit_schedule/schedule/models/lesson_model.dart';
import 'package:intl/intl.dart';

class LessonsGridColumn extends StatelessWidget {
  final DateTime date;
  final List<LessonModel> lessons;

  const LessonsGridColumn({super.key, required this.date, required this.lessons});

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return Column(
      children: List.generate(24, (i) {
        final lesson = lessons.firstWhereOrNull((lesson) => lesson.startDate.hour == i);
        return _buildLesson(layout: layout, lesson: lesson);
      }),
    );
  }

  /// Вёрстка занятия.
  Widget _buildLesson({required Layout layout, required LessonModel? lesson}) {
    return BlocBuilder<ScheduleBloc, ScheduleState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox(),
          fetched: (state) {
            // Фильтр занятия по категории.
            LessonModel? lessonByCategory;
            if (state.chosenCategory.servicesIds.any((id) => id == lesson?.serviceId)) {
              lessonByCategory = lesson;
            }

            return Container(
              width: 140,
              height: 140,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              decoration: BoxDecoration(
                color: _dateIsNow ? layout.theme.scheduleBg : null,
                border: Border(
                  left: BorderSide(color: layout.theme.lessonScheduleBorder),
                  top: BorderSide(color: layout.theme.lessonScheduleBorder),
                ),
              ),
              child: lessonByCategory == null
                  ? const SizedBox()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      DateFormat.Hm(layout.intl.localeName).format(lessonByCategory.startDate),
                                      style: layout.fonts.styleR16.copyWith(color: layout.theme.text),
                                    ),
                                    const SizedBox(width: 7),
                                    Text(
                                      '${lessonByCategory.duration} мин.',
                                      style: layout.fonts.styleR12.copyWith(color: layout.theme.lightText1),
                                    ),
                                  ],
                                ),
                                if (!lessonByCategory.free)
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: layout.theme.primarySchedule,
                                      borderRadius: BorderRadius.circular(90),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 2),
                                        child:
                                            Text('₽', style: layout.fonts.styleM10.copyWith(color: layout.theme.white)),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              lessonByCategory.serviceName,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: layout.fonts.styleM12.copyWith(color: layout.theme.primarySchedule),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              lessonByCategory.placeName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: layout.fonts.styleR10.copyWith(color: layout.theme.lightText1),
                            ),
                            Text(
                              lessonByCategory.trainerName,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: layout.fonts.styleR10.copyWith(color: layout.theme.lightText1),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                                      decoration: BoxDecoration(
                                        color: layout.theme.scheduleBg,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        layout.intl.by_appointment,
                                        style: layout.fonts.styleM8.copyWith(
                                          color: lessonByCategory.byAppointment
                                              ? layout.theme.primarySchedule
                                              : layout.theme.lightText1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
            );
          },
        );
      },
    );
  }

  /// Проверка текущей даты на сегодняшний день.
  bool get _dateIsNow =>
      date.year == DateTime.now().year && date.month == DateTime.now().month && date.day == DateTime.now().day;
}
