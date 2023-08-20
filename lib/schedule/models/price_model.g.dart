// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceModel _$$_PriceModelFromJson(Map<String, dynamic> json) =>
    _$_PriceModel(
      id: json['price_type_id'] as String,
      value: (json['price'] as num).toDouble(),
      name: json['price_type_name'] as String,
    );

Map<String, dynamic> _$$_PriceModelToJson(_$_PriceModel instance) =>
    <String, dynamic>{
      'price_type_id': instance.id,
      'price': instance.value,
      'price_type_name': instance.name,
    };
