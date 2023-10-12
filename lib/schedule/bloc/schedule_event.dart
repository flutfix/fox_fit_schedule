part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.fetchSchedule({required String clubId, required DateTime startDate}) =
      ScheduleFetchScheduleEvent;

  const factory ScheduleEvent.chooseCategory({required CategoryModel category}) = ScheduleChooseCategoryEvent;

  const factory ScheduleEvent.changeStartDateSchedule({required String clubId, required DateTime startDate}) =
      ScheduleChangeStartDateScheduleEvent;
}
