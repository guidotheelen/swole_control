import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/theme_extensions.dart';

/// A widget that scales in on first build.
class ScaleIn extends StatefulWidget {
  const ScaleIn({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<ScaleIn> createState() => _ScaleInState();
}

class _ScaleInState extends State<ScaleIn> {
  double scale = 0.5;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => setState(() {
        scale = 1.0;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: scale,
      curve: Curves.easeOut,
      duration: context.theme.durations.fast,
      child: widget.child,
    );
  }
}
