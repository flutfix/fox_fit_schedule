import 'package:flutter/material.dart';

class HoverBuilder extends StatefulWidget {
  final Function()? onTap;
  final MouseCursor? cursor;
  final Widget Function(bool isHovered, bool isPressed) builder;

  const HoverBuilder({
    Key? key,
    this.onTap,
    this.cursor,
    required this.builder,
  }) : super(key: key);

  @override
  State<HoverBuilder> createState() => _OnHoverState();
}

class _OnHoverState extends State<HoverBuilder> {
  bool isHovered = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        hitTestBehavior: HitTestBehavior.opaque,
        cursor: widget.cursor ?? SystemMouseCursors.click,
        onEnter: (_) => _onEntered(true),
        onExit: (_) => _onEntered(false),
        child: widget.builder(isHovered, isPressed),
      ),
    );
  }

  void _onEntered(bool isHovered) {
    setState(() => this.isHovered = isHovered);
  }
}
