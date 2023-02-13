import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/common/listener.dart';
import 'package:talas/main/main_screen.dart';
import 'package:talas/networking/request_provider/request_state.dart';
import 'package:talas/palette.dart';
import 'package:talas/welcome/providers/login_provider.dart';
import 'package:talas/welcome/register_screen.dart';
import 'package:talas/common/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Palette.light,
        padding: const EdgeInsets.fromLTRB(40, 50, 40, 10),
        child: ChangeNotifierProvider(
          create: (context) => LoginProvider(),
          child: Column(
            children: [
              const Text(
                "Prijavi se",
                style: TextStyle(
                  color: Palette.primary,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Consumer<LoginProvider>(
                builder: (_, loginProvider, __) => RegularInput(
                  hintText: "email",
                  onChanged: (String value) {
                    loginProvider.email = value;
                  },
                ),
              ),
              Consumer<LoginProvider>(
                builder: (_, loginProvider, __) => PasswordInput(
                  onChanged: (String value) {
                    loginProvider.password = value;
                  },
                ),
              ),
              Consumer<LoginProvider>(
                builder: (_, loginProvider, __) => ElevatedButton(
                  onPressed: loginProvider.canLogin() ? loginProvider.logIn : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Palette.primary,
                    foregroundColor: Palette.light,
                  ),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: loginProvider.state.when(
                      initial: () => const Text("Prijavi se"),
                      loading: () => const SizedBox(
                        height: 15,
                        width: 15,
                        child: CircularProgressIndicator(color: Palette.light),
                      ),
                      success: (_) => const Text("Prijavljen!"),
                      failure: (_) => Text("Pogrešna kombinacija $_"),
                    ),
                  ),
                ),
              ),
              ProviderListener<LoginProvider>(
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
                    "Nemaš nalog?",
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      final route = MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      );
                      Navigator.of(context).pushReplacement(route);
                    },
                    child: const Text(
                      "Registruj se",
                      style: TextStyle(
                        color: Palette.primary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
