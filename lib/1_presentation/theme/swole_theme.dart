import 'package:swole_control/1_presentation/theme/models/app_colors.dart';
import 'package:swole_control/1_presentation/theme/models/app_durations.dart';
import 'package:swole_control/1_presentation/theme/models/app_radii.dart';
import 'package:swole_control/1_presentation/theme/models/app_shadows.dart';
import 'package:swole_control/1_presentation/theme/models/app_units.dart';

class SwoleTheme {
  const SwoleTheme({
    required this.colors,
    required this.shadows,
    required this.units,
    required this.durations,
    required this.radii,
  });

  final AppColors colors;
  final AppShadows shadows;
  final AppUnits units;
  final AppDurations durations;
  final AppRadii radii;

  static const instance = SwoleTheme(
    colors: AppColors.instance,
    shadows: AppShadows.instance,
    units: AppUnits.instance,
    durations: AppDurations.instance,
    radii: AppRadii.instance,
  );
}
