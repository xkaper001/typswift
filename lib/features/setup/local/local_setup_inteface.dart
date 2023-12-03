import 'package:flutter/material.dart';
import 'package:typswift/features/setup/set_name.dart';

class LocalSetup extends StatelessWidget {
  const LocalSetup({super.key});
  static route() => MaterialPageRoute(builder: (context) => const LocalSetup());
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: const [
            ConfigName()
          ],
        ),
      ),
    );
  }
}