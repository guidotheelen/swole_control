import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/pages/homepage/homepage.dart';
import 'package:swole_control/1_presentation/theme/material_theme.dart';

class SwoleApp extends StatelessWidget {
  const SwoleApp({super.key});

  static const _appName = 'Swole Control';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appName,
      theme: MaterialTheme.light,
      darkTheme: MaterialTheme.dark,
      themeMode: ThemeMode.system,
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
