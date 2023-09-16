import 'package:flutter/material.dart';
import 'package:islamy_app/home/quran/surah_details_screen.dart';
import 'package:islamy_app/home_screen.dart';
import 'package:islamy_app/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SurahDetailsScreen.routeName: (context) => SurahDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}
