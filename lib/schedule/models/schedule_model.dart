import 'package:fox_fit_schedule/schedule/models/category_model.dart';
import 'package:fox_fit_schedule/schedule/models/lesson_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
class ScheduleModel with _$ScheduleModel {
  @JsonSerializable(explicitToJson: true)
  const factory ScheduleModel({
    required List<CategoryModel> categories,
    required List<LessonModel> lessons,
  }) = _ScheduleModel;

  factory ScheduleModel.fromJson(Map<String, dynamic> json) => _$ScheduleModelFromJson(json);
}
