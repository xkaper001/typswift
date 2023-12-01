import 'package:flutter/material.dart';
import 'package:typswift/features/setup/set_name.dart';

class CloudSetup extends StatelessWidget {
  const CloudSetup({super.key});
  static route() => MaterialPageRoute(builder: (context) => const CloudSetup());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          ConfigName()
        ],
      ),
    );
  }
}