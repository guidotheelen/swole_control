import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:swole_control/1_presentation/pages/profile/profile_page.dart';
import 'package:swole_control/1_presentation/pages/settings/settings_page.dart';
import 'package:swole_control/1_presentation/pages/workout/workout_page.dart';

@immutable
class SwoleRouter {
  static final routerConfig = GoRouter(
    routes: [
      GoRoute(
        path: WorkoutPage.route,
        builder: (_, __) => const WorkoutPage(),
        routes: [
          GoRoute(
            path: _subPath(SettingsPage.route),
            builder: (_, __) => const SettingsPage(),
          ),
          GoRoute(
            path: _subPath(ProfilePage.route),
            builder: (_, __) => const ProfilePage(),
          ),
        ],
      ),
    ],
  );

  static String _subPath(String path) => path.replaceAll(RegExp(r'^/|/$'), '');
}
