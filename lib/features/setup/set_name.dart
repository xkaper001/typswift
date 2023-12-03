import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:typswift/common_widgets/components.dart';
import 'package:typswift/style.dart';

class ConfigName extends StatelessWidget {
  const ConfigName({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Name',
                style: AppStyle.textTheme.titleMedium,
              ),
              const Gap(10),
              inputTextField(labelText: ''),
              const Gap(20),
              Buttons.roundRectButton(text: 'Continue')
            ],
          ),
        ),
      ),
    );
  }
}
