import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:talas/assets.dart';
import 'package:talas/palette.dart';

class RegularInput extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;

  const RegularInput({required this.hintText, this.onChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextField(
        style: const TextStyle(
          fontSize: 18,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        ),
        onChanged: onChanged,
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  final void Function(String value)? onChanged;

  const PasswordInput({this.onChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PasswordInputProvider(),
      child: Consumer<PasswordInputProvider>(
        builder: (context, passwordInputProvider, _) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: TextField(
            style: const TextStyle(
              fontSize: 18,
            ),
            obscureText: !passwordInputProvider.isVisible,
            decoration: InputDecoration(
              hintText: "šifra",
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.0),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.0),
              ),
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              suffixIcon: IconButton(
                onPressed: passwordInputProvider.changeVisibility,
                icon: SvgPicture.asset(context.watch<PasswordInputProvider>().isVisible
                    ? Assets.assets_welcome_visible_svg
                    : Assets.assets_welcome_invisible_svg),
              ),
            ),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}

class PasswordInputProvider with ChangeNotifier {
  bool _isVisible = false;

  get isVisible => _isVisible;

  void changeVisibility() {
    _isVisible = !_isVisible;
    notifyListeners();
  }
}

class WhiteOutlinedButton extends StatelessWidget {
  final String content;
  final Widget destination;

  const WhiteOutlinedButton(this.content, this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final route = MaterialPageRoute(
          builder: (context) => destination,
        );
        Navigator.of(context).push(route);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Palette.primary,
        foregroundColor: Palette.light,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: const BorderSide(color: Palette.light),
        ),
      ),
      child: Text(content),
    );
  }
}
