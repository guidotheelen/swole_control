import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/constants/swole_colors.dart';

@immutable
class AppColors {
  const AppColors({
    required this.primaryBackground,
    required this.secondaryBackground,
    required this.primaryElement,
    required this.textDefault,
    required this.primaryButtonBackground,
    required this.primaryButtonBackgroundInactive,
    required this.primaryButtonForeground,
    required this.primaryButtonForegroundInactive,
    required this.primaryAttentionColor,
    required this.secondaryAttentionColor,
  });

  final Color primaryBackground;
  final Color secondaryBackground;
  final Color primaryElement;
  final Color textDefault;
  final Color primaryButtonBackground;
  final Color primaryButtonBackgroundInactive;
  final Color primaryButtonForeground;
  final Color primaryButtonForegroundInactive;
  final Color primaryAttentionColor;
  final Color secondaryAttentionColor;

  static const light = AppColors(
    primaryBackground: SwoleColors.white,
    secondaryBackground: SwoleColors.offWhite,
    primaryElement: SwoleColors.darkestBlue,
    textDefault: SwoleColors.darkGrey,
    primaryButtonBackground: SwoleColors.darkerBlue,
    primaryButtonBackgroundInactive: SwoleColors.darkBlue,
    primaryButtonForeground: SwoleColors.lightBlue,
    primaryButtonForegroundInactive: SwoleColors.greyBlue,
    primaryAttentionColor: SwoleColors.red,
    secondaryAttentionColor: SwoleColors.darkRed,
  );

  static const dark = AppColors(
    primaryBackground: SwoleColors.darkerBlue,
    secondaryBackground: SwoleColors.darkBlue,
    primaryElement: SwoleColors.darkestBlue,
    textDefault: SwoleColors.white,
    primaryButtonBackground: SwoleColors.lightBlue,
    primaryButtonBackgroundInactive: SwoleColors.greyBlue,
    primaryButtonForeground: SwoleColors.darkerBlue,
    primaryButtonForegroundInactive: SwoleColors.darkBlue,
    primaryAttentionColor: SwoleColors.red,
    secondaryAttentionColor: SwoleColors.darkRed,
  );
}
