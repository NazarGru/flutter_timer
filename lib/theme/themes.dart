import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      // primarySwatch: Colors.blue,
      colorScheme: ColorScheme.light(),
);
  ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    // primarySwatch: Palette.mcgpalette0,
    colorScheme: ColorScheme.dark(),
  );