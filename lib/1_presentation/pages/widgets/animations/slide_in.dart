// ignore_for_file: avoid-late-keyword
// ignore_for_file: avoid-ignoring-return-values

import 'package:flutter/material.dart';

/// A widget that slides in on first build.
class SlideIn extends StatefulWidget {
  const SlideIn({
    super.key,
    required this.child,
    required this.duration,
    this.axisDirection = AxisDirection.right,
  });

  final Widget child;
  final AxisDirection axisDirection;
  final Duration duration;

  @override
  State<SlideIn> createState() => _SlideInState();
}

class _SlideInState extends State<SlideIn> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<Offset> _animation = transition();

  @override
  void initState() {
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }

  Animation<Offset> transition() {
    switch (widget.axisDirection) {
      case AxisDirection.up:
        return Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(_controller);
      case AxisDirection.down:
        return Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
            .animate(_controller);
      case AxisDirection.left:
        return Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
            .animate(_controller);
      case AxisDirection.right:
        return Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
            .animate(_controller);
    }
  }
}
