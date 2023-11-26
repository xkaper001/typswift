import 'package:flutter/material.dart';
import 'package:typswift/features/onboarding/interface.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingColumn.nonDesktopColumn(),
      // enter mobile body here
      // switch case based on user login or first time usage.
    );
  }
}