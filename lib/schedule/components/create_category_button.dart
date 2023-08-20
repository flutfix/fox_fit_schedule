import 'package:flutter/material.dart';
import 'package:fox_fit_schedule/schedule/common/assets.dart';
import 'package:fox_fit_schedule/schedule/common/layout.dart';
import 'package:fox_fit_schedule/schedule/components/base_button.dart';

class CreateCategoryButton extends StatelessWidget {
  final VoidCallback onTap;

  const CreateCategoryButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return BaseButton(
      size: const Size(198, 48),
      text: layout.intl.create_category,
      textStyle: layout.fonts.styleM14.copyWith(
        color: layout.theme.inActiveCategoryText,
      ),
      color: layout.theme.inActiveCategoryButton,
      borderRadius: BorderRadius.circular(100),
      icon: Assets.icons.plus,
      iconColor: layout.theme.primary,
      iconSize: const Size(11, 11),
      onTap: onTap,
    );
  }
}
