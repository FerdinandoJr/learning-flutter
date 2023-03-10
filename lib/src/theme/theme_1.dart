import 'package:flutter/material.dart';

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

final theme = ThemeData(
  appBarTheme: const AppBarTheme(
    color: Color.fromARGB(250, 248, 113, 40),
  ),
  primarySwatch: buildMaterialColor(
    const Color.fromARGB(250, 248, 113, 40),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.bold,
        color: Colors.white
    ),
    headlineSmall: TextStyle(
      color: Color.fromARGB(250, 248, 113, 40),
      fontWeight: FontWeight.bold
    )
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(Color.fromARGB(250, 248, 113, 40)),
        textStyle: MaterialStatePropertyAll(TextStyle(color: Colors.white))),
  ),
);
