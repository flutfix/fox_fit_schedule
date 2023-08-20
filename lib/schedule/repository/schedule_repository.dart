import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fox_fit_schedule/schedule/api/schedule_api.dart';
import 'package:fox_fit_schedule/schedule/common/data.dart';
import 'package:fox_fit_schedule/schedule/models/category_model.dart';
import 'package:fox_fit_schedule/schedule/models/preview_lesson_model.dart';
import 'package:fox_fit_schedule/schedule/models/server_failure.dart';
import 'package:fox_fit_schedule/schedule/repository/i_schedule_repository.dart';
import 'package:logger/logger.dart';

class ScheduleRepository implements IScheduleRepository {
  final ScheduleApi _api;
  final Logger _logger;

  ScheduleRepository(
    this._api,
    this._logger,
  );

  @override
  Data<List<CategoryModel>> fetchCategories({required String clubId, String? page, String? limit}) async {
    try {
      final response = await _api.fetchCategories(clubId: clubId);
      _logger.i('[Repository] Was fetched ${response.categories.length} categories');

      return Right(response.categories);
    } on DioError catch (e) {
      _logger.e('Dio Exception: /lesson-categories\nStatus code: ${e.response?.statusCode}\nResponse: ${e.response}');

      return Left(ServerFailure(statusCode: e.response?.statusCode));
    }
  }

  @override
  Data<List<PreviewLessonModel>> fetchPreviewLessons({
    required String clubId,
    required String startDate,
    required String endDate,
  }) async {
    try {
      final response = await _api.fetchPreviewLessons(
        clubId: clubId,
        startDate: startDate,
        endDate: endDate,
      );
      _logger.i('[Repository] Was fetched ${response.previewLessons.length} preview lessons');

      return Right(response.previewLessons);
    } on DioError catch (e) {
      _logger.e('Dio Exception: /onec-lessons\nStatus code: ${e.response?.statusCode}\nResponse: ${e.response}');

      return Left(ServerFailure(statusCode: e.response?.statusCode));
    }
  }
}
