part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.fetchData({required String clubId}) = ScheduleFetchDataEvent;

  const factory ScheduleEvent.fetchCategories({required String clubId}) = ScheduleFetchCategoriesEvent;

  const factory ScheduleEvent.chooseCategory({required CategoryModel category}) = ScheduleChooseCategoryEvent;

  const factory ScheduleEvent.fetchPreviewLessons({required String clubId, required DateTime startDate}) =
      ScheduleFetchPreviewLessonsEvent;

  const factory ScheduleEvent.changeStartDateSchedule({required String clubId, required DateTime startDate}) =
      ScheduleChangeStartDateScheduleEvent;
}
