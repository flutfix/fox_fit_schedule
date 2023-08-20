import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fox_fit_schedule/schedule/models/category_model.dart';
import 'package:fox_fit_schedule/schedule/models/date_time_serializer.dart';
import 'package:fox_fit_schedule/schedule/models/failure.dart';
import 'package:fox_fit_schedule/schedule/models/preview_lesson_model.dart';
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
    on<ScheduleFetchDataEvent>(_onFetchData, transformer: droppable());
    on<ScheduleFetchCategoriesEvent>(_onFetchCategories, transformer: droppable());
    on<ScheduleChooseCategoryEvent>(_onChooseCategory, transformer: droppable());
    on<ScheduleFetchPreviewLessonsEvent>(_onFetchPreviewLessons, transformer: droppable());
    on<ScheduleChangeStartDateScheduleEvent>(_onChangeStartDateSchedule, transformer: droppable());
  }

  /// Получение всех необходимых данных для прогрузки экрана.
  FutureOr<void> _onFetchData(ScheduleFetchDataEvent event, Emitter emit) async {
    add(ScheduleEvent.fetchCategories(clubId: event.clubId));
    add(ScheduleEvent.fetchPreviewLessons(clubId: event.clubId, startDate: DateTime.now()));
  }

  /// Получение списка категорий.
  FutureOr<void> _onFetchCategories(ScheduleFetchCategoriesEvent event, Emitter emit) async {
    final response = await _scheduleRepository.fetchCategories(clubId: event.clubId);

    response.fold(
      (failure) => _onStateFailure(emit, failure),
      (categories) => _onFetchCategoriesSuccessful(emit, categories),
    );
  }

  /// Если запрос на получение списка категорий успешно прошел.
  void _onFetchCategoriesSuccessful(Emitter emit, List<CategoryModel> categories) {
    final sortedCategories = _sortCategoriesByCreateDate(categories: categories);

    state.maybeMap(
      failure: (_) {},
      fetched: (state) {
        final chosenCategory = state.chosenCategory ?? sortedCategories.firstOrNull;
        emit(state.copyWith(categories: sortedCategories, chosenCategory: chosenCategory));
        if (chosenCategory != null) {
          add(ScheduleEvent.chooseCategory(category: chosenCategory));
        }
      },
      orElse: () {
        emit(ScheduleState.fetched(
          categories: sortedCategories,
          chosenCategory: sortedCategories.firstOrNull,
        ));
      },
    );
  }

  /// Смена категории.
  FutureOr<void> _onChooseCategory(ScheduleChooseCategoryEvent event, Emitter emit) {
    state.maybeMap(
      fetched: (state) => emit(state.copyWith(chosenCategory: event.category)),
      orElse: () => _logger.w('Illegal ${state.runtimeType} for ScheduleCreateEvent'),
    );
  }

  /// Получение занятий для предпросмотра расписания.
  FutureOr<void> _onFetchPreviewLessons(ScheduleFetchPreviewLessonsEvent event, Emitter emit) async {
    final startDate = DateTimeSerializer.toJsonFormatyyyyMMdd(DateTime(
      event.startDate.year,
      event.startDate.month,
      event.startDate.day - 7,
    ));
    final endDate = DateTimeSerializer.toJsonFormatyyyyMMdd(DateTime(
      event.startDate.year,
      event.startDate.month,
      event.startDate.day + 14,
    ));

    final response = await _scheduleRepository.fetchPreviewLessons(
      clubId: event.clubId,
      startDate: startDate,
      endDate: endDate,
    );

    response.fold(
      (failure) => _onStateFailure(emit, failure),
      (previewLessons) => _onFetchPreviewLessonsSuccessful(emit, previewLessons),
    );
  }

  /// Если запрос на получение списка занятий успешно прошел.
  void _onFetchPreviewLessonsSuccessful(Emitter emit, List<PreviewLessonModel> previewLessons) {
    state.maybeMap(
      failure: (_) {},
      fetched: (state) {
        emit(state.copyWith(previewLessons: previewLessons));
      },
      orElse: () {
        emit(ScheduleState.fetched(previewLessons: previewLessons));
      },
    );
  }

  /// Смена стартового дня в расписании.
  FutureOr<void> _onChangeStartDateSchedule(ScheduleChangeStartDateScheduleEvent event, Emitter emit) async {
    state.maybeMap(
      fetched: (state) {
        emit(state.copyWith(startDateSchedule: event.startDate));
        add(ScheduleEvent.fetchPreviewLessons(clubId: event.clubId, startDate: event.startDate));
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

  /// Сортировка категорий по дате создания.
  List<CategoryModel> _sortCategoriesByCreateDate({required List<CategoryModel> categories}) {
    return categories.toList()..sort((a, b) => a.createdAt.compareTo(b.createdAt));
  }
}
