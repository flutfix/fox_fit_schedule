import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fox_fit_schedule/schedule/common/layout.dart';
import 'package:fox_fit_schedule/schedule/components/button_enum.dart';
import 'package:fox_fit_schedule/schedule/components/hover_opacity.dart';

class BaseButton extends StatelessWidget {
  final ButtonEnum type;
  final Size? size;
  final String text;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final String? icon;
  final Color? iconColor;
  final Size? iconSize;
  final VoidCallback onTap;

  const BaseButton({
    Key? key,
    this.type = ButtonEnum.filled,
    this.size,
    required this.text,
    this.textStyle,
    this.padding,
    this.color,
    this.borderColor,
    this.borderRadius,
    this.icon,
    this.iconColor,
    this.iconSize,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return HoverOpacity(
      onTap: onTap,
      child: Container(
        width: size?.width,
        height: size?.height,
        padding: padding,
        decoration: BoxDecoration(
          color: _backgroundColor(layout),
          border: Border.all(color: _borderColor(layout)),
          borderRadius: borderRadius ?? BorderRadius.circular(15),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_showIcon)
                  SvgPicture.asset(
                    icon!,
                    width: iconSize?.width,
                    height: iconSize?.height,
                    color: _iconColor(layout),
                  ),
                if (_showPaddingBetweenIconAndText) const SizedBox(width: 8),
                Text(
                  text,
                  style: textStyle?.copyWith(color: _textColor(layout)) ??
                      layout.fonts.styleSB16.copyWith(color: _textColor(layout)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool get _showIcon => icon != null;
  bool get _showPaddingBetweenIconAndText => icon != null && text.isNotEmpty;

  Color _borderColor(Layout layout) => borderColor ?? color ?? layout.theme.primary;
  Color? _textColor(Layout layout) {
    if (textStyle?.color != null) return textStyle?.color;
    return type == ButtonEnum.filled ? layout.theme.white : layout.theme.primary;
  }

  Color? _iconColor(Layout layout) {
    if (iconColor != null) return iconColor;
    return type == ButtonEnum.filled ? layout.theme.white : layout.theme.primary;
  }

  Color _backgroundColor(Layout layout) {
    if (color != null) return color!;
    return type == ButtonEnum.filled ? layout.theme.primary : Colors.transparent;
  }
}
