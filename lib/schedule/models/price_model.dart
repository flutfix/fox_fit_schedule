import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_model.freezed.dart';
part 'price_model.g.dart';

@freezed
class PriceModel with _$PriceModel {
  const factory PriceModel({
    @JsonKey(name: 'price_type_id') required String id,
    @JsonKey(name: 'price') required double value,
    @JsonKey(name: 'price_type_name') required String name,
  }) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) => _$PriceModelFromJson(json);
}
