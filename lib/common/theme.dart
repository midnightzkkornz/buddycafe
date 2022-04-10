// found in the LICENSE file.
import 'package:flutter/material.dart';

// Theme application 

final appTheme = ThemeData(
  primarySwatch: Colors.green, // colors
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontFamily: '', // --> add text styless
      fontWeight: FontWeight.normal,
      fontSize: 14,
      color: Colors.black,
    ),
  ),
);
