import 'package:flutter/foundation.dart';

import 'package:swole_control/1_presentation/theme/constants/swole_durations.dart';

@immutable
class AppDurations {
  const AppDurations._({
    required this.fast,
    required this.medium,
    required this.slow,
  });

  final Duration fast;
  final Duration medium;
  final Duration slow;

  static const instance = AppDurations._(
    fast: SwoleDurations.short,
    medium: SwoleDurations.medium,
    slow: SwoleDurations.long,
  );
}
