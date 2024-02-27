import 'package:flutter/painting.dart';

import 'package:swole_control/1_presentation/theme/constants/swole_colors.dart';

class SwoleShadows {
  static const BoxShadow shallowDark = BoxShadow(
    color: SwoleColors.opaqueDarkestGrey,
    offset: Offset(2.5, 5),
    blurRadius: 5,
  );
  static const BoxShadow tallDark = BoxShadow(
    color: SwoleColors.opaqueDarkestGrey,
    offset: Offset(5, 10),
    blurRadius: 10,
  );
  static const BoxShadow shallowLight = BoxShadow(
    color: SwoleColors.opaqueDarkGrey,
    offset: Offset(2.5, 5),
    blurRadius: 5,
  );
  static const BoxShadow tallLight = BoxShadow(
    color: SwoleColors.opaqueDarkGrey,
    offset: Offset(5, 10),
    blurRadius: 10,
  );
}
