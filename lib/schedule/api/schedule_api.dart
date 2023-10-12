import 'package:dio/dio.dart';
import 'package:fox_fit_schedule/schedule/models/schedule_model.dart';
import 'package:retrofit/http.dart';

part 'schedule_api.g.dart';

///////////////////////////////////////
//// *** Promotions API Client *** ////
///////////////////////////////////////

@RestApi()
abstract class ScheduleApi {
  factory ScheduleApi(Dio dio, {String baseUrl}) = _ScheduleApi;

  @GET('v1/onec/club-schedule')
  Future<ScheduleModel> fetchSchedule({
    @Query('club_id') required String clubId,
    @Query('start_date') required String startDate,
    @Query('end_date') required String endDate,
  });
}
