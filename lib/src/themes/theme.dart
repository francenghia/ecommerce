import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  const AppTheme();

  static ThemeData lightTheme = ThemeData(
      backgroundColor: ColorsLight.background,
      primaryColor: ColorsLight.background,
      cardTheme: CardTheme(color: ColorsLight.background),
      textTheme: TextTheme(display1: TextStyle(color: ColorsLight.black)),
      iconTheme: IconThemeData(color: ColorsLight.iconColor),
      bottomAppBarColor: ColorsLight.background,
      dividerColor: ColorsLight.lightGrey,
      primaryTextTheme:
          TextTheme(body1: TextStyle(color: ColorsLight.titleTextColor)));

  static TextStyle titleStyle =
      const TextStyle(color: ColorsLight.titleTextColor, fontSize: 16);
  static TextStyle subTitleStyle =
      const TextStyle(color: ColorsLight.subTitleTextColor, fontSize: 12);

  static TextStyle h1Style =
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle h2Style = const TextStyle(fontSize: 22);
  static TextStyle h3Style = const TextStyle(fontSize: 20);
  static TextStyle h4Style = const TextStyle(fontSize: 18);
  static TextStyle h5Style = const TextStyle(fontSize: 16);
  static TextStyle h6Style = const TextStyle(fontSize: 14);

  static List<BoxShadow> shadow = <BoxShadow>[
    BoxShadow(color: ColorsLight.greyBox, blurRadius: 10, spreadRadius: 15),
  ];

  static EdgeInsets padding =
      const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  static EdgeInsets hPadding = const EdgeInsets.symmetric(
    horizontal: 10,
  );

  static double fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
