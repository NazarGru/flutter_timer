import 'package:flutter/material.dart';

import '../theme/ThemeManeger.dart';
ThemeManager _themeManager = ThemeManager();

class AppBarMy extends StatefulWidget implements
PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  const AppBarMy({
    Key? key,
    required this.title,
    required this.backgroundColor,
  }):super(key: key);

  Size get preferredSize => Size.fromHeight(60.0);

  @override
  State<AppBarMy> createState() => _AppBarMyState();

}

class _AppBarMyState extends State<AppBarMy> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }
  themeListener(){
    if(mounted){
      setState(() {
        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.backgroundColor,
      title: Text(widget.title),
       actions: [Switch(value: _themeManager.themeMode == ThemeMode.dark, onChanged: (newValue){
       _themeManager.togleTheme(newValue);
     })],
    );
  }
}