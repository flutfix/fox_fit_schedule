import 'package:fox_fit_schedule/schedule/common/data.dart';
import 'package:fox_fit_schedule/schedule/models/category_model.dart';
import 'package:fox_fit_schedule/schedule/models/preview_lesson_model.dart';

abstract class IScheduleRepository {
  /// Получение списка категорий.
  Data<List<CategoryModel>> fetchCategories({required String clubId, String? page, String? limit});

  /// Получение списка занятий для предпросмотра расписания.
  Data<List<PreviewLessonModel>> fetchPreviewLessons({
    required String clubId,
    required String startDate,
    required String endDate,
  });
}
