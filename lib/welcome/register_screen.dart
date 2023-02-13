import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/assets.dart';
import 'package:talas/common/listener.dart';
import 'package:talas/main/main_screen.dart';
import 'package:talas/networking/request_provider/request_state.dart';
import 'package:talas/palette.dart';
import 'package:talas/welcome/providers/register_provider.dart';
import 'package:talas/common/widgets.dart';
import 'package:talas/welcome/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Palette.light,
        child: ChangeNotifierProvider(
          create: (context) => RegisterProvider(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 50, 40, 10),
              child: Column(
                children: [
                  const Text(
                    "Registruj se",
                    style: TextStyle(
                      color: Palette.primary,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Consumer<RegisterProvider>(
                    builder: (_, registerProvider, __) => OutlinedButton(
                      onPressed: registerProvider.pickImage,
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 3, color: Palette.primary),
                        shape: const CircleBorder(),
                      ),
                      child: ClipOval(
                        child: registerProvider.image != null
                            ? Image.file(
                                File(registerProvider.image!.path),
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              )
                            : Image.asset(
                                Assets.assets_default_pfp_png,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Consumer<RegisterProvider>(
                    builder: (_, registerProvider, __) => RegularInput(
                      hintText: "ime i prezime",
                      onChanged: (String val) {
                        registerProvider.name = val;
                      },
                    ),
                  ),
                  Consumer<RegisterProvider>(
                    builder: (_, registerProvider, __) => RegularInput(
                      hintText: "email",
                      onChanged: (String val) {
                        registerProvider.email = val;
                      },
                    ),
                  ),
                  Consumer<RegisterProvider>(
                    builder: (_, registerProvider, __) => PasswordInput(
                      onChanged: (String val) {
                        registerProvider.password = val;
                      },
                    ),
                  ),
                  Consumer<RegisterProvider>(
                    builder: (_, registerProvider, __) => RegularInput(
                      hintText: "mjesto",
                      onChanged: (String val) {
                        registerProvider.location = val;
                      },
                    ),
                  ),
                  Consumer<RegisterProvider>(
                    builder: (_, registerProvider, __) => ElevatedButton(
                      onPressed: registerProvider.canRegister() ? registerProvider.register : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Palette.primary,
                        foregroundColor: Palette.light,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: registerProvider.state.when(
                          initial: () => const Text("Registruj se"),
                          loading: () => const SizedBox(
                            height: 15,
                            width: 15,
                            child: CircularProgressIndicator(color: Palette.light),
                          ),
                          success: (_) => const Text("Registrovan!"),
                          failure: (_) => const Text("Došlo je do greške"),
                        ),
                      ),
                    ),
                  ),
                  ProviderListener<RegisterProvider>(
                    listener: (context, loginProvider) {
                      if (loginProvider.state is! RequestStateSuccess) return;

                      final route = MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      );
                      Navigator.of(context).pushAndRemoveUntil(route, (route) => false);
                    },
                    child: Container(),
                  ),
                  const Divider(thickness: 1),
                  Row(
                    children: [
                      const Text(
                        "Imaš nalog?",
                        style: TextStyle(fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          final route = MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          );
                          Navigator.of(context).pushReplacement(route);
                        },
                        child: const Text(
                          "Prijavi se",
                          style: TextStyle(
                            color: Palette.primary,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
