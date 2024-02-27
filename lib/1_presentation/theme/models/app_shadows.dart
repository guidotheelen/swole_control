import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/constants/swole_shadows.dart';

@immutable
class AppShadows {
  const AppShadows({
    required this.tall,
    required this.shallow,
  });

  final BoxShadow tall;
  final BoxShadow shallow;

  static const light = AppShadows(
    tall: SwoleShadows.tallLight,
    shallow: SwoleShadows.shallowLight,
  );

  static const dark = AppShadows(
    tall: SwoleShadows.tallDark,
    shallow: SwoleShadows.shallowDark,
  );
}
