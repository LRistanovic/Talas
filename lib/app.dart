import 'package:flutter/material.dart';
import 'package:talas/main/main_screen.dart';
import 'package:talas/palette.dart';
import 'package:talas/welcome/welcome_screen.dart';

class TalasApp extends StatelessWidget {
  final bool loggedIn;

  const TalasApp(this.loggedIn, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Talas",
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          primary: Palette.primary,
        ),
      ),
      home: loggedIn ? const MainScreen() : WelcomeScreen(),
    );
  }
}
