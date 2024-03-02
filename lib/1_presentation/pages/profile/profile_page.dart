import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/constants.dart';
import 'package:swole_control/1_presentation/pages/widgets/swole_scaffold.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const route = '/profile';

  @override
  Widget build(BuildContext context) {
    return const SwoleScaffold(
      title: Contstants.appName,
      child: Center(
        child: Text('Soon'),
      ),
    );
  }
}
