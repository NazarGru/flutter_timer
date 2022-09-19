import 'package:flutter/material.dart';
import 'package:flutter_timer/constants/constants.dart';
import 'package:flutter_timer/provider/AppStateNotifier.dart';
import 'package:provider/provider.dart';



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
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: MediaQuery.of(context).platformBrightness == Brightness.light 
          ? gradientHeaderLight 
          : gradientHeaderDark,
        ),
      ),
      backgroundColor: widget.backgroundColor,
      title: Text(widget.title),
      actions: [
        Switch(
             value: Provider.of<AppStateNotifier>(context, listen: false).isDarkModeOn,
             onChanged: (boolVal){
               Provider.of<AppStateNotifier>(context, listen: false).updateTheme(boolVal);
             },
        )
      ],
    );
  }
}