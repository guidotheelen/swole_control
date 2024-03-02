// ignore_for_file: avoid-non-null-assertion

import 'package:flutter/material.dart';

import 'package:swole_control/1_presentation/pages/widgets/swole_bottom_app_bar.dart';

class SwoleScaffold extends StatelessWidget {
  const SwoleScaffold({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const SwoleBottomAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
