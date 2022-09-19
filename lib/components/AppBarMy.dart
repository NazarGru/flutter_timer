import 'package:flutter/material.dart';
import 'package:flutter_timer/constants/constants.dart';
import 'package:flutter_timer/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_timer/theme/themes.dart';


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
  Widget build(BuildContext context) {
    ThemeProvider _themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: _themeProvider.getTheme == darkTheme ? gradientHeaderDark  : gradientHeaderLight
       
          // gradient:   
          //  MediaQuery.of(context).platformBrightness == Brightness.light 
          // ? gradientHeaderLight 
          // : gradientHeaderDark,
        ),
      ),
      backgroundColor: widget.backgroundColor,
      title: Text(widget.title),
      actions: [
        IconButton(
          onPressed: (){
            _themeProvider.swapTheme();
          }, 
          icon: Icon(_themeProvider.getTheme == darkTheme ? Icons.shield_moon : Icons.sunny),
        )
      ],
    );
  }
}