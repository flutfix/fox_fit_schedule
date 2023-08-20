import 'package:flutter/material.dart';
import 'package:fox_fit_schedule/schedule/components/category_button.dart';
import 'package:fox_fit_schedule/schedule/components/create_category_button.dart';
import 'package:fox_fit_schedule/schedule/models/category_model.dart';

class CategoriesSwitcher extends StatelessWidget {
  final List<CategoryModel> categories;
  final CategoryModel? chosenCategory;
  final Function(CategoryModel) onTapCategory;
  final VoidCallback? onTapCreate;

  const CategoriesSwitcher({
    super.key,
    required this.categories,
    this.chosenCategory,
    required this.onTapCategory,
    this.onTapCreate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          ...categories.map(
            (category) => CategoryButton(
              category: category,
              isActive: category.name == chosenCategory?.name,
              onTap: onTapCategory,
            ),
          ),
          if (onTapCreate != null) CreateCategoryButton(onTap: onTapCreate!),
        ],
      ),
    );
  }
}
