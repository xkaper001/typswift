import 'package:flutter/material.dart';

import '../../constants/assets.dart';

class OnboardingColumn {
  static nonDesktopColumn() => Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: Image.asset(
                Assets.appFullLogoWhite,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Text('You own your data!'),
                TextButton(
                  onPressed: () {},
                  child: const Text('Signup'),
                ),
              ],
            ),
          )
        ],
      );

  static desktopColumn() => Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: const Text('Image goes here'),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Text('You own your data!'),
                TextButton(onPressed: () {}, child: const Text('Signup')),
              ],
            ),
          )
        ],
      );
}
