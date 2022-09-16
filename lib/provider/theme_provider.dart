import 'package:flutter/material.dart';
import 'package:flutter_timer/pallete/pallete.dart';



class MyThemes{
  static final darkTheme = ThemeData(
    primaryColor: Colors.black,
    primarySwatch: Palette.mcgpalette0,
    colorScheme: ColorScheme.dark(),
  );
  static final lightTheme = ThemeData(
      primaryColor: Colors.blue,
      primarySwatch: Colors.blue,
      colorScheme: ColorScheme.light(),
  );
}