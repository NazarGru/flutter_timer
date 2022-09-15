import 'package:flutter/material.dart';
import 'package:flutter_timer/pages/HomePage.dart';
import 'package:flutter_timer/pages/TimerPage.dart';
import 'package:flutter_timer/theme/ThemeConstants.dart';
import 'package:flutter_timer/theme/ThemeManeger.dart';


void main() {
  runApp(const MyApp());
}
ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/timer': (context) => TimerPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}