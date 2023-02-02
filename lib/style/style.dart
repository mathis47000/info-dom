import 'package:flutter/material.dart';

const gradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Colors.lightBlueAccent,
    Colors.lightBlue,
    Colors.blue,
    Colors.blueAccent,
  ],
);

const trailingCard = Icon(
  Icons.arrow_forward_ios,
);

var themeData = ThemeData(
  // color text button
  useMaterial3: true,
  //define color for material 3 from one color
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue).copyWith(
    secondary: Colors.white,
    background: Colors.lightBlue,
  ),
  //app bar style
  appBarTheme: const AppBarTheme(
    scrolledUnderElevation: 0,
    centerTitle: true,
  ),
  // bottom navigation bar color
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
  //style text field
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.white),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    iconColor: Colors.white,
    suffixIconColor: Colors.white,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
