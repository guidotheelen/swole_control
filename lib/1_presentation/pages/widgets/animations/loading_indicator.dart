import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
    this.size = _defaultSize,
  });

  static const _defaultSize = 55.0;
  static const _spinnerPath = 'assets/images/loading.gif';

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: Image.asset(_spinnerPath),
    );
  }
}
