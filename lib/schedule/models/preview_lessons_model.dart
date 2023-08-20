import 'package:fox_fit_schedule/schedule/models/preview_lesson_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'preview_lessons_model.freezed.dart';
part 'preview_lessons_model.g.dart';

@freezed
class PreviewLessonsModel with _$PreviewLessonsModel {
  @JsonSerializable(explicitToJson: true)
  const factory PreviewLessonsModel({@JsonKey(name: 'lessons') required List<PreviewLessonModel> previewLessons}) =
      _PreviewLessonsModel;

  factory PreviewLessonsModel.fromJson(Map<String, dynamic> json) => _$PreviewLessonsModelFromJson(json);
}
