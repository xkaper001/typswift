import 'package:flutter/material.dart';

import '../constants/palette.dart';
import '../style.dart';

TextField inputTextField({
    required String labelText,
    bool? obscureText,
    TextEditingController? controller,
    TextInputType? keyboardType,
  }) {
    return TextField(
        controller: controller,
        obscureText: obscureText ?? false,
        style: AppStyle.textTheme.headlineSmall,
        cursorColor: Palette.white,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          label: Text(labelText),
          labelStyle: AppStyle.textTheme.labelSmall,
          constraints: const BoxConstraints(maxWidth: 400),
          border: OutlineInputBorder(
            borderSide:  BorderSide(color: Palette.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          focusColor: Palette.transparent,
          hoverColor: Palette.transparent,
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.red),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.white),
            borderRadius: BorderRadius.circular(5),
          ),
          // errorBorder: outlineInputBorder.copyWith(
          //     borderSide: const BorderSide(color: Pallete.red)),
        ));
  }