import 'package:fox_fit_schedule/schedule/models/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  @JsonSerializable(explicitToJson: true)
  const factory CategoriesModel({required List<CategoryModel> categories}) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) => _$CategoriesModelFromJson(json);
}
