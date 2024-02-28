import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/models/app_colors.dart';
import 'package:swole_control/1_presentation/theme/models/app_durations.dart';
import 'package:swole_control/1_presentation/theme/models/app_radii.dart';
import 'package:swole_control/1_presentation/theme/models/app_shadows.dart';
import 'package:swole_control/1_presentation/theme/models/app_units.dart';

extension ThemeGetter on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension AppColorsGetter on ThemeData {
  AppColors get colors => extension<AppColors>() ?? AppColors.instance;
}

extension AppDurationGetter on ThemeData {
  AppDurations get durations =>
      extension<AppDurations>() ?? AppDurations.instance;
}

extension AppRadiiGetter on ThemeData {
  AppRadii get radii => extension<AppRadii>() ?? AppRadii.instance;
}

extension AppShadowsGetter on ThemeData {
  AppShadows get shadows => extension<AppShadows>() ?? AppShadows.instance;
}

extension AppUnitsGetter on ThemeData {
  AppUnits get units => extension<AppUnits>() ?? AppUnits.instance;
}
