import 'package:flutter/material.dart';

ThemeData baseTheme() => ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'AlfaSlabOne',
  // textTheme: const TextTheme(
  //   bodyMedium: TextStyle(
  //       fontSize: 16,
  //       fontWeight: FontWeight.w400,
  //       color: Colors.black
  //   ),
  // ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.black,
    selectionColor: Colors.black,
    selectionHandleColor: Colors.black,
  ),
);