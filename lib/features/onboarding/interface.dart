import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/assets.dart';
import '../../constants/palette.dart';
import '../../common_widgets/components.dart';
import '../../style.dart';

class OnboardingUI {
  static const _tagline = "Notes how you want them!";
  static const _description =
      "For people who want flexibility and control over where they store their notes and tasks, Typswift is an app that allows you to save your content locally or to the cloud - the choice is yours!";
  static Column mobile(context) => nonDesktopColumn(context);
  static Row desktop(context) => desktopRow(context);
}

Column nonDesktopColumn(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.doodleBg),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, BoxConstraints constraints) {
                  final pw = constraints.maxWidth / 100;
                  return Padding(
                    padding: EdgeInsets.all(30 * pw / 2),
                    child: AspectRatio(
                      aspectRatio: 16 / 5,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Palette.black, width: 2),
                          color: Palette.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                              Assets.appFullLogoBlack,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    OnboardingUI._tagline,
                    style: AppStyle.textTheme.headlineMedium,
                  ),
                  const Gap(30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      OnboardingUI._description,
                      style: AppStyle.textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(40),
                  Buttons.roundRectButton(
                    text: ' Setup Cloud Storage  ',
                    trailingIcon: Icons.cloud_upload_outlined,
                    buttonColor: Palette.white,
                    textColor: Palette.black,
                    onPressed: () {},
                  ),
                  const Gap(20),
                  Buttons.roundRectButton(
                    text: ' Store Locally  ',
                    buttonColor: Palette.black,
                    trailingIcon: Icons.lock_outline_rounded,
                    textColor: Palette.white,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

Row desktopRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.doodleBg),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, BoxConstraints constraints) {
                  final pw = constraints.maxWidth / 100;
                  return Padding(
                    padding: EdgeInsets.all(40 * pw / 2),
                    child: AspectRatio(
                      aspectRatio: 16 / 5,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Palette.black, width: 2),
                          color: Palette.white,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                              Assets.appFullLogoBlack,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    OnboardingUI._tagline,
                    style: AppStyle.textTheme.headlineMedium,
                  ),
                  const Gap(30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      OnboardingUI._description,
                      style: AppStyle.textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(40),
                  Buttons.roundRectButton(
                    text: ' Setup Cloud Storage  ',
                    trailingIcon: Icons.cloud_upload_outlined,
                    buttonColor: Palette.white,
                    textColor: Palette.black,
                    onPressed: () {},
                  ),
                  const Gap(20),
                  Buttons.roundRectButton(
                    text: ' Store Locally  ',
                    buttonColor: Palette.black,
                    trailingIcon: Icons.lock_outline_rounded,
                    textColor: Palette.white,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }