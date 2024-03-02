import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/constants.dart';
import 'package:swole_control/1_presentation/pages/widgets/animations/loading_indicator.dart';
import 'package:swole_control/1_presentation/pages/widgets/swole_scaffold.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static const route = '/settings';

  @override
  Widget build(BuildContext context) {
    return const SwoleScaffold(
      title: Contstants.appName,
      child: Center(
        child: LoadingIndicator(),
      ),
    );
  }
}
