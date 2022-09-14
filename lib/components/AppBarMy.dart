import 'package:flutter/material.dart';


PreferredSizeWidget AppBarMy(String title) {
  return AppBar(
    title: Text(
        '$title'
    ),
    centerTitle: false,
  );
}