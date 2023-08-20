// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_lessons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreviewLessonsModel _$$_PreviewLessonsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PreviewLessonsModel(
      previewLessons: (json['lessons'] as List<dynamic>)
          .map((e) => PreviewLessonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PreviewLessonsModelToJson(
        _$_PreviewLessonsModel instance) =>
    <String, dynamic>{
      'lessons': instance.previewLessons.map((e) => e.toJson()).toList(),
    };
