// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      clubId: json['club_id'] as String,
      parentId: json['parent_id'] as String,
      createdAt: json['created_at'] as int,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'club_id': instance.clubId,
      'parent_id': instance.parentId,
      'created_at': instance.createdAt,
    };
