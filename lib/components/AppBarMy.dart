import 'package:flutter/material.dart';



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
      // flexibleSpace: Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //     colors: [Color(0xff0c82df), Color(0xff064170)],
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //   )
      //   ),
      // ),
      backgroundColor: widget.backgroundColor,
      title: Text(widget.title),
    
    );
  }
}