import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/theme_extensions.dart';

class UpcomingBanner extends StatelessWidget {
  const UpcomingBanner({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Banner(
        message: 'upcoming',
        location: BannerLocation.topEnd,
        color: context.theme.colors.element,
        child: Padding(
          padding: EdgeInsets.all(context.theme.units.xs),
          child: child,
        ),
      ),
    );
  }
}
