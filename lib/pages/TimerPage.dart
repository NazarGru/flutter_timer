import 'package:flutter/material.dart';
import 'package:flutter_timer/components/AppBarMy.dart';
import 'package:flutter_timer/components/TimerApp.dart';
import 'package:flutter_timer/components/NavBar.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        drawer: NavBar(),
        appBar: AppBarMy('Таймер'),
        body: TimerApp(),
    );
  }
}