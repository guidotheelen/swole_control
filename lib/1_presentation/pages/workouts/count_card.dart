import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/theme/theme_extensions.dart';

class CountCard extends StatelessWidget {
  const CountCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const height = 110.0;

    final lightFont = Theme.of(context).textTheme.displayLarge?.copyWith(
          fontSize: height * 0.6,
          color: context.theme.colors.empty,
          fontWeight: FontWeight.bold,
        );
    final darkFont = Theme.of(context).textTheme.displayLarge?.copyWith(
          fontSize: height * 0.6,
          color: context.theme.colors.element,
          fontWeight: FontWeight.bold,
        );

    return Card(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.symmetric(horizontal: context.theme.units.m),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: height,
              color: context.theme.colors.bad,
              child: Center(
                child: Text(
                  '0',
                  style: lightFont,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: height,
              color: context.theme.colors.empty,
              child: Center(
                child: Text(
                  '5',
                  style: darkFont,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
