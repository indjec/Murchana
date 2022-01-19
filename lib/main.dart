import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/root.dart';

import 'music_player_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Murchana',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kBackgroundColor,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: kPrimaryDarkColor,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.white,
          ),
          colorScheme: const ColorScheme.dark(),
          textTheme: const TextTheme(
            headline6: TextStyle(
              color: Colors.white,
            ),
            headline5: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
            caption: TextStyle(
              color: Colors.white30,
            ),
            bodyText1: TextStyle(
              fontSize: 25,
            ),
            bodyText2: TextStyle(
              fontSize: 15,
              color: kPrimaryColor,
            ),
          )),
      home: const RootScreen(),
    );
  }
}
