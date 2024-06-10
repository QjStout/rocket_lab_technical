import 'package:flutter/material.dart';

class ColorConfigs {
  static const scheme = ColorScheme(
    brightness: Brightness.light,
    primary: ColorTokens.royalBlue,
    onPrimary: ColorTokens.aquamarine,
    secondary: ColorTokens.charcoal,
    onSecondary: ColorTokens.white,
    error: ColorTokens.imperialRed,
    onError: ColorTokens.white,
    surface: ColorTokens.white,
    onSurface: ColorTokens.charcoal,
  );
}

class ColorTokens {
  static const white = Color(0xFFFFFFFF);
  static const royalBlue = Color.fromARGB(255, 34, 39, 108);
  static const aquamarine = Color.fromARGB(255, 6, 244, 177);
  static const charcoal = Color.fromARGB(255, 60, 70, 85);
  static const roseQuarts = Color.fromARGB(255, 180, 166, 171);
  static const imperialRed = Color.fromARGB(255, 255, 66, 66);
}
