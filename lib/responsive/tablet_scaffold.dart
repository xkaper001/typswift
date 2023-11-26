import 'package:flutter/material.dart';
import 'package:typswift/features/onboarding/interface.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingColumn.desktopColumn(),
      // enter Tablet body here
    );
  }
}