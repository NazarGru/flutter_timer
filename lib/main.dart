import 'package:flutter/material.dart';
import 'package:flutter_timer/pages/HomePage.dart';
import 'package:flutter_timer/pages/TimerPage.dart';
import 'package:flutter_timer/provider/theme_provider.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  bool themebool = pref.getBool('isDark') ?? false;
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(isDark: themebool),
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
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child){
       return MaterialApp(
          title: 'My App',
          theme: themeProvider.getTheme,
          themeMode: ThemeMode.system,
  
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