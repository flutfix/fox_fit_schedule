part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.fetching() = _ScheduleFetchingState;

  const factory ScheduleState.failure({required Failure failure}) = _ScheduleErrorState;

  const factory ScheduleState.fetched({
    required ScheduleModel schedule,
    required CategoryModel chosenCategory,
    required DateTime startDateSchedule,
  }) = _ScheduleFetchedState;
}
