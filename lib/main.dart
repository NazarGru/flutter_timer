import 'package:flutter/material.dart';
import 'package:flutter_timer/pages/HomePage.dart';
import 'package:flutter_timer/pages/TimerPage.dart';
import 'package:flutter_timer/provider/theme_provider.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      // darkTheme: MyThemes.darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/timer': (context) => TimerPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}