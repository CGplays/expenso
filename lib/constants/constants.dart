import 'package:flutter/material.dart';

class Constants {
  static const kPrimaryColor = Color(0xFF282828);
  static const kSecondaryColor = Color(0xFF343434);
  static const kTeriaryColor = Color(0xFF98A600);
  static const kHeadingTextColor = Color(0xFFE2E2E2);
  static const kBodyTextColor = Color(0xFFC2C2C2);
  static const ksubtitleTextColor = Color(0xFFA2A2A2);
  static const kbaseSpacing = 4;
  int remSpacing(multiple) {
    return multiple * kbaseSpacing;
  }
}
