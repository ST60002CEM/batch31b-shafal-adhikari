import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: backColor,
    fontFamily: "Montserrat",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return const TextTheme(
      bodyLarge: TextStyle(
        color: kTextPColor,
      ),
      bodyMedium: TextStyle(
        color: kTextColor,
        fontSize: 40,
      ),
      displayLarge: TextStyle(color: kTextPColor, fontSize: 50),
      headlineSmall: TextStyle(color: kTextPColor));
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: kPrimaryColor,
    elevation: 0,
    iconTheme: IconThemeData(color: Color.fromARGB(255, 32, 32, 32)),
    titleTextStyle: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
  );
}
