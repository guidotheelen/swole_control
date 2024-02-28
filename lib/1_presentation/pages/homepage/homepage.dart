import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/constants.dart';
import 'package:swole_control/1_presentation/pages/widgets/animations/loading_indicator.dart';
import 'package:swole_control/1_presentation/pages/widgets/buttons/navigation_button.dart';
import 'package:swole_control/1_presentation/pages/widgets/swole_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SwoleScaffold(
      title: Contstants.appName,
      navigationButton: NavigationButton.menu(
        context: context,
        onRoute: (_) {},
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadingIndicator(),
          ],
        ),
      ),
    );
  }
}
