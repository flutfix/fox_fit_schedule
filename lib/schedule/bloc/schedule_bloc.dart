import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fox_fit_schedule/schedule/models/category_model.dart';
import 'package:fox_fit_schedule/schedule/models/date_time_serializer.dart';
import 'package:fox_fit_schedule/schedule/models/failure.dart';
import 'package:fox_fit_schedule/schedule/models/schedule_model.dart';
import 'package:fox_fit_schedule/schedule/repository/i_schedule_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'schedule_bloc.freezed.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final IScheduleRepository _scheduleRepository;
  final Logger _logger;

  ScheduleBloc(this._scheduleRepository, this._logger) : super(const ScheduleState.fetching()) {
    _setupEvents();
  }

  void _setupEvents() {
    on<ScheduleFetchScheduleEvent>(_onFetchSchedule, transformer: droppable());
    on<ScheduleChooseCategoryEvent>(_onChooseCategory, transformer: droppable());
    on<ScheduleChangeStartDateScheduleEvent>(_onChangeStartDateSchedule, transformer: droppable());
  }

  /// Получение всех необходимых данных для прогрузки экрана.
  FutureOr<void> _onFetchSchedule(ScheduleFetchScheduleEvent event, Emitter emit) async {
    final startDate = DateTime(event.startDate.year, event.startDate.month, event.startDate.day - 7);
    final endDate = DateTime(event.startDate.year, event.startDate.month, event.startDate.day + 14);

    final startDateStr = DateTimeSerializer.toJsonFormatyyyyMMdd(startDate);
    final endDateStr = DateTimeSerializer.toJsonFormatyyyyMMdd(endDate);

    final response = await _scheduleRepository.fetchSchedule(
      clubId: event.clubId,
      startDate: startDateStr,
      endDate: endDateStr,
    );

    response.fold(
      (failure) => _onStateFailure(emit, failure),
      (schedule) => _onFetchScheduleSuccessful(emit, schedule, event.startDate),
    );
  }

  /// Если запрос на получение всех данных успешно прошел.
  void _onFetchScheduleSuccessful(Emitter emit, ScheduleModel schedule, DateTime startDate) {
    emit(ScheduleState.fetched(
      schedule: schedule,
      chosenCategory: schedule.categories.first,
      startDateSchedule: startDate,
    ));
  }

  /// Смена категории.
  FutureOr<void> _onChooseCategory(ScheduleChooseCategoryEvent event, Emitter emit) {
    state.maybeMap(
      fetched: (state) => emit(state.copyWith(chosenCategory: event.category)),
      orElse: () => _logger.w('Illegal ${state.runtimeType} for ScheduleChooseCategoryEvent'),
    );
  }

  /// Смена стартового дня в расписании.
  FutureOr<void> _onChangeStartDateSchedule(ScheduleChangeStartDateScheduleEvent event, Emitter emit) async {
    state.maybeMap(
      fetched: (state) {
        emit(state.copyWith(startDateSchedule: event.startDate));
        add(ScheduleEvent.fetchSchedule(clubId: event.clubId, startDate: event.startDate));
      },
      orElse: () {
        _logger.w('Illegal ${state.runtimeType} for ScheduleChangeStartDateScheduleEvent');
      },
    );
  }

  /// Вывоз ошибки состояния.
  void _onStateFailure(Emitter emit, Failure failure) {
    emit(ScheduleState.failure(failure: failure));
  }
}
