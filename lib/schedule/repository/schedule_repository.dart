import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fox_fit_schedule/schedule/api/schedule_api.dart';
import 'package:fox_fit_schedule/schedule/common/data.dart';
import 'package:fox_fit_schedule/schedule/models/schedule_model.dart';
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
  Data<ScheduleModel> fetchSchedule({
    required String clubId,
    required String startDate,
    required String endDate,
  }) async {
    try {
      final response = await _api.fetchSchedule(
        clubId: clubId,
        startDate: startDate,
        endDate: endDate,
      );
      _logger.i('[Repository] Was fetched schedule');

      return Right(response);
    } on DioError catch (e) {
      _logger.e('Dio Exception: /club-schedule\nStatus code: ${e.response?.statusCode}\nResponse: ${e.response}');

      return Left(ServerFailure(statusCode: e.response?.statusCode));
    }
  }
}
