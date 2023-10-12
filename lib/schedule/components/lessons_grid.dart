import 'package:flutter/material.dart';
import 'package:fox_fit_schedule/schedule/common/layout.dart';
import 'package:fox_fit_schedule/schedule/components/lessons_grid_column.dart';
import 'package:fox_fit_schedule/schedule/models/lesson_model.dart';

class LessonsGrid extends StatelessWidget {
  final List<LessonModel> lessons;
  final DateTime startDate;
  final ScrollController mainController;
  final ScrollController attachedController;

  const LessonsGrid({
    super.key,
    required this.lessons,
    required this.startDate,
    required this.mainController,
    required this.attachedController,
  });

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return SizedBox(
      height: layout.height - 206,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            attachedController.jumpTo(notification.metrics.pixels);
            return true;
          },
          child: SingleChildScrollView(
            controller: mainController,
            child: SizedBox(
              height: 3360,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 21,
                itemBuilder: (context, i) {
                  final date = DateTime(startDate.year, startDate.month, startDate.day - 7 + i);
                  final lessonsByDate = lessons.where((lesson) => lesson.startDate.day == date.day).toList();

                  return LessonsGridColumn(date: date, lessons: lessonsByDate);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
