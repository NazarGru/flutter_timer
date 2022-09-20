import 'package:flutter/material.dart';

class ContainerPd extends StatelessWidget {
  final Widget widget;
  final Color? backgroundColor;
  const ContainerPd({
    Key? key,
    required this.widget,
    this.backgroundColor,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const  EdgeInsets.all(10.0),
      color: backgroundColor,
      child: widget,
    );
  }
}