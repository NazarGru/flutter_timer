import 'package:flutter/material.dart';
import 'package:flutter_timer/components/AppBarMy.dart';
import 'package:flutter_timer/components/NavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        drawer: NavBar(),
        appBar: AppBarMy('Головна сторінка'),
        body: Container(
          child: Text("HomePage"),
        ),
    );
  }
}