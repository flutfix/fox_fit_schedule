import 'package:flutter/material.dart';
import 'package:fox_fit_schedule/schedule/components/hover_builder.dart';

class HoverOpacity extends StatelessWidget {
  const HoverOpacity({Key? key, this.onTap, required this.child}) : super(key: key);

  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(
      onTap: onTap,
      builder: (isHovered, isPressed) {
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 100),
          opacity: isHovered ? 0.85 : 1,
          child: child,
        );
      },
    );
  }
}
