import 'package:flutter/material.dart';
import 'package:flutter_timer/pages/HomePage.dart';
import 'package:flutter_timer/pages/TimerPage.dart';
import 'package:flutter_timer/provider/AppStateNotifier.dart';
import 'package:flutter_timer/provider/theme_provider.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';



// void main() {
//   runApp(const MyApp());
// }
void main() {
  runApp(
    ChangeNotifierProvider<AppStateNotifier>(
      create: (context) => AppStateNotifier(),
      child: MyApp(),
    ),
  );
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child){
       return MaterialApp(
          title: 'My App',
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/timer': (context) => TimerPage(),
          },
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}