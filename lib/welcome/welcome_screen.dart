import 'package:flutter/material.dart';
import 'package:talas/welcome/login_screen.dart';
import 'package:talas/welcome/register_screen.dart';
import 'package:talas/common/widgets.dart';
import 'package:talas/palette.dart';
import 'package:talas/assets.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.assets_welcome_background_png),
            fit: BoxFit.cover,
          )
        ),
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "TALAS",
              style: TextStyle(
                color: Palette.light,
                fontSize: 54,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                WhiteOutlinedButton("Uloguj se", LoginScreen()),
                WhiteOutlinedButton("Registruj se", RegisterScreen()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
