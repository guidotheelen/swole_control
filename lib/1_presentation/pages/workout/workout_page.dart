import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/constants.dart';
import 'package:swole_control/1_presentation/pages/widgets/swole_scaffold.dart';
import 'package:swole_control/1_presentation/pages/workout/count_card.dart';
import 'package:swole_control/1_presentation/theme/theme_extensions.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return SwoleScaffold(
      title: Contstants.appName,
      child: ListView.separated(
        separatorBuilder: (context, _) => SizedBox(
          height: context.theme.units.m,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const CountCard();
          }
          return Card(
            margin: EdgeInsets.symmetric(
              horizontal: context.theme.units.m,
            ),
            child: const ListTile(
              title: Text('Chestday'),
              subtitle: Text('02/03/2024 : 20 min'),
            ),
          );
        },
      ),
    );
  }
}
