// ignore_for_file: avoid-non-null-assertion

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:swole_control/1_presentation/theme/theme_extensions.dart';

class SwoleScaffold extends StatelessWidget {
  const SwoleScaffold({
    super.key,
    this.title,
    required this.navigationButton,
    required this.child,
  });

  final String? title;
  final Widget navigationButton;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            if (title != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title!,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            Gap(context.theme.units.m),
            Expanded(child: child),
          ],
        ),
      ),
      floatingActionButton: navigationButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
