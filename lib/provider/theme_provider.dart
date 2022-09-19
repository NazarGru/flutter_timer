import 'package:flutter/material.dart';
import 'package:flutter_timer/constants/constants.dart';
import 'package:flutter_timer/pallete/pallete.dart';



class MyThemes{

  MyThemes._();

  static final darkTheme = ThemeData(
  
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    primarySwatch: Palette.mcgpalette0,
    colorScheme: ColorScheme.dark(),
  );
  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      primarySwatch: Colors.blue,
      colorScheme: ColorScheme.light(),
  );
}