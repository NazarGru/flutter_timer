import 'package:flutter/material.dart';
import 'package:flutter_timer/pages/HomePage.dart';
import 'package:flutter_timer/pages/TimerPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/timer': (context) => TimerPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}