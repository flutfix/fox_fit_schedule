import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fox_fit_schedule/schedule/components/hover_opacity.dart';

class SvgIconButton extends StatelessWidget {
  final String icon;
  final double? width;
  final double? height;
  final Color? color;
  final Function()? onTap;

  const SvgIconButton({
    Key? key,
    required this.icon,
    this.width,
    this.height,
    this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverOpacity(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: color,
            width: width,
            height: height,
          ),
          GestureDetector(
            onTap: onTap,
            behavior: HitTestBehavior.opaque,
            child: const SizedBox(
              width: 18,
              height: 18,
            ),
          ),
        ],
      ),
    );
  }
}
