import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/theme_extensions.dart';

class NavigationButton extends StatelessWidget {
  factory NavigationButton.menu({
    required BuildContext context,
    required ValueChanged<String> onRoute,
  }) =>
      NavigationButton._(
        icon: Icons.apps_rounded,
        onPressed: () {},
      );

  factory NavigationButton.close({
    required BuildContext context,
  }) =>
      NavigationButton._(
        icon: Icons.close,
        onPressed: () {},
      );

  factory NavigationButton.back({
    required BuildContext context,
  }) =>
      NavigationButton._(
        icon: Icons.arrow_back,
        onPressed: () {},
      );

  const NavigationButton._({
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: context.theme.units.m),
      child: FloatingActionButton(
        onPressed: onPressed,
        shape: const CircleBorder(),
        child: Icon(icon),
      ),
    );
  }
}
