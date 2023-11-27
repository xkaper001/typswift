import 'package:flutter/material.dart';

import '../constants/palette.dart';
import '../style.dart';

class Buttons {
  static Widget roundRectButton(
      {required String text,
      VoidCallback? onPressed,
      IconData? leadingIcon,
      IconData? trailingIcon,
      Color? buttonColor,
      Color? textColor,
      String? imageIcon}) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(AppStyle.textTheme.labelSmall),
        fixedSize: MaterialStateProperty.all(const Size.fromHeight(50)),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 40)),
        maximumSize: const MaterialStatePropertyAll(Size.fromWidth(400)),
        backgroundColor:
            MaterialStateProperty.all(buttonColor ?? Palette.black),
        foregroundColor: MaterialStateProperty.all(textColor ?? Palette.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leadingIcon != null ? Icon(leadingIcon) : const SizedBox(),
          Text(text),
          trailingIcon != null ? Icon(trailingIcon) : const SizedBox(),
          imageIcon != null
              ? Image.asset(
                  imageIcon,
                  width: 30,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}