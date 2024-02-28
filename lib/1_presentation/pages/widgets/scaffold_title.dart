import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/pages/widgets/animations/slide_in.dart';
import 'package:swole_control/1_presentation/theme/theme_extensions.dart';

class ScaffoldTitle extends StatelessWidget {
  const ScaffoldTitle({super.key, required this.title});

  static const _height = 56.0;

  final String title;

  @override
  Widget build(BuildContext context) {
    return SlideIn(
      duration: context.theme.durations.medium,
      axisDirection: AxisDirection.left,
      child: Padding(
        padding: EdgeInsets.all(context.theme.units.m),
        child: SizedBox(
          height: _height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
