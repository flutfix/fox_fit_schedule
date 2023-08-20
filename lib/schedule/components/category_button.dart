import 'package:flutter/material.dart';
import 'package:fox_fit_schedule/schedule/common/layout.dart';
import 'package:fox_fit_schedule/schedule/components/hover_builder.dart';
import 'package:fox_fit_schedule/schedule/models/category_model.dart';

class CategoryButton extends StatelessWidget {
  final CategoryModel category;
  final bool isActive;
  final Function(CategoryModel) onTap;

  const CategoryButton({
    Key? key,
    required this.category,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return HoverBuilder(
      onTap: () => onTap(category),
      builder: (isHovered, isPressed) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          constraints: const BoxConstraints(minWidth: 132),
          decoration: BoxDecoration(
            color: isActive ? layout.theme.primary : layout.theme.inActiveCategoryButton,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: isHovered ? layout.theme.primary : Colors.transparent),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  category.name,
                  style: layout.fonts.styleM14.copyWith(
                    color: isActive ? layout.theme.white : layout.theme.inActiveCategoryText,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
