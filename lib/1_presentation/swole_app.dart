import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/constants.dart';
import 'package:swole_control/1_presentation/pages/workouts/workouts_page.dart';
import 'package:swole_control/1_presentation/theme/material_theme.dart';

class SwoleApp extends StatelessWidget {
  const SwoleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Contstants.appName,
      theme: MaterialTheme.instance,
      home: const WorkoutsPage(),
    );
  }
}
