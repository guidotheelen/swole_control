import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:swole_control/1_presentation/pages/profile/profile_page.dart';
import 'package:swole_control/1_presentation/pages/settings/settings_page.dart';

class SwoleBottomAppBar extends StatelessWidget {
  const SwoleBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.electric_bolt),
            onPressed: () {
              context.go('/');
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              context.go(ProfilePage.route);
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.go(SettingsPage.route);
            },
          ),
        ],
      ),
    );
  }
}
