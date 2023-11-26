import 'package:flutter/material.dart';
import 'package:typswift/features/onboarding/interface.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingColumn.desktopColumn(),
      // enter desktop scaffold here
    );
  }
}