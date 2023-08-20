import 'package:dio/dio.dart';
import 'package:fox_fit_schedule/schedule/models/categories_model.dart';
import 'package:fox_fit_schedule/schedule/models/preview_lessons_model.dart';
import 'package:retrofit/http.dart';

part 'schedule_api.g.dart';

///////////////////////////////////////
//// *** Promotions API Client *** ////
///////////////////////////////////////

@RestApi()
abstract class ScheduleApi {
  factory ScheduleApi(Dio dio, {String baseUrl}) = _ScheduleApi;

  @GET('v1/lesson-categories')
  Future<CategoriesModel> fetchCategories({
    @Query('club_id') required String clubId,
    @Query('page') String? page,
    @Query('limit') String? limit,
  });

  @GET('v1/onec-lessons')
  Future<PreviewLessonsModel> fetchPreviewLessons({
    @Query('club_id') required String clubId,
    @Query('start_date') required String startDate,
    @Query('end_date') required String endDate,
  });
}
