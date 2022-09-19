
import 'package:flutter/material.dart';
import 'package:flutter_timer/theme/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ThemeProvider extends ChangeNotifier{
  late ThemeData _selectedTheme;
  late SharedPreferences prefs;

  ThemeProvider({bool isDark = false}){
    _selectedTheme = isDark ? darkTheme : lightTheme;
  }
  void swapTheme(){
    _selectedTheme = _selectedTheme == darkTheme  ? lightTheme : darkTheme;
    notifyListeners();
  }

  ThemeData get getTheme => _selectedTheme;

  Future<void> ChangeTheme() async {
    prefs = await SharedPreferences.getInstance();
    if(_selectedTheme == lightTheme){
      _selectedTheme = lightTheme;
      await prefs.setBool('isDark', false);
    }else{
        _selectedTheme == darkTheme;
        await prefs.setBool('isDark', true);
    }
    notifyListeners();
  }
}

// class MyThemes{

//   MyThemes._();

//   static final darkTheme = ThemeData(
  
//     brightness: Brightness.dark,
//     primaryColor: Colors.black,
//     primarySwatch: Palette.mcgpalette0,
//     colorScheme: ColorScheme.dark(),
//   );
//   static final lightTheme = ThemeData(
//       brightness: Brightness.light,
//       primaryColor: Colors.blue,
//       primarySwatch: Colors.blue,
//       colorScheme: ColorScheme.light(),
//   );
// }