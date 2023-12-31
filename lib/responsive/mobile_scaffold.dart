import 'package:flutter/material.dart';
import 'package:typswift/features/onboarding/onboarding_interface.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnboardingUI.mobile(context),
        // enter mobile body here
        // switch case based on user login or first time usage.
      ),
    );
  }
}