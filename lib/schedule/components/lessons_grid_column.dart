import 'package:flutter/material.dart';
import 'package:fox_fit_schedule/schedule/common/iterable_extension.dart';
import 'package:fox_fit_schedule/schedule/common/layout.dart';
import 'package:fox_fit_schedule/schedule/models/preview_lesson_model.dart';
import 'package:intl/intl.dart';

class LessonsGridColumn extends StatelessWidget {
  final DateTime date;
  final List<PreviewLessonModel> lessons;

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
  Widget _buildLesson({required Layout layout, required PreviewLessonModel? lesson}) {
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
      child: lesson == null
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
                              DateFormat.Hm(layout.intl.localeName).format(date),
                              style: layout.fonts.styleR16.copyWith(color: layout.theme.text),
                            ),
                            const SizedBox(width: 7),
                            Text(
                              '45 мин.',
                              style: layout.fonts.styleR12.copyWith(color: layout.theme.lightText1),
                            ),
                          ],
                        ),
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: layout.theme.primarySchedule,
                            borderRadius: BorderRadius.circular(90),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      lesson.serviceName,
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
                      lesson.placeName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: layout.fonts.styleR10.copyWith(color: layout.theme.lightText1),
                    ),
                    Text(
                      lesson.trainerName,
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
                                  color: layout.theme.primarySchedule,
                                  // color: lesson. ? layout.theme.primarySchedule : layout.theme.lightText1,
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
  }

  /// Проверка текущей даты на сегодняшний день.
  bool get _dateIsNow =>
      date.year == DateTime.now().year && date.month == DateTime.now().month && date.day == DateTime.now().day;
}
