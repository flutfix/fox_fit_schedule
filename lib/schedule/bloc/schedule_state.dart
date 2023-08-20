part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState.fetching() = _ScheduleFetchingState;

  const factory ScheduleState.failure({required Failure failure}) = _ScheduleErrorState;

  const factory ScheduleState.fetched({
    @Default([]) List<CategoryModel> categories,
    CategoryModel? chosenCategory,
    @Default([]) List<PreviewLessonModel> previewLessons,
    DateTime? startDateSchedule,
  }) = _ScheduleFetchedState;
}
