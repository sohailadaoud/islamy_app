import 'package:flutter/material.dart';

class MyTheme {
  //light mode,  dark mode and colors
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: blackColor)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      showUnselectedLabels: true,
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: blackColor,
        ),
        titleSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w300,
          color: blackColor,
        )),
  );
}
