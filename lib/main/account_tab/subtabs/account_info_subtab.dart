import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:talas/assets.dart';
import 'package:talas/main/account_tab/providers/account_info_provider.dart';
import 'package:talas/main/account_tab/subtabs/edit_account/edit_account_screen.dart';
import 'package:talas/networking/storage_repository.dart';
import 'package:talas/palette.dart';
import 'package:talas/welcome/welcome_screen.dart';

class AccountInfoSubtab extends StatelessWidget {
  final AccountInfoProvider accountInfoProvider;

  const AccountInfoSubtab(this.accountInfoProvider, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(Assets.assets_main_account_envelope_svg),
                  Consumer<AccountInfoProvider>(
                    builder: (_, accountInfoProvider, __) => accountInfoProvider.state.when(
                      initial: () => Container(),
                      loading: () => Container(),
                      success: (userInfo) => Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Text(
                          userInfo.email,
                          style: const TextStyle(
                            color: Palette.mediumDark,
                          ),
                        ),
                      ),
                      failure: (err) => const Text("Došlo je do greške"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(Assets.assets_main_account_location_svg),
                  Consumer<AccountInfoProvider>(
                    builder: (_, accountInfoProvider, __) => accountInfoProvider.state.when(
                      initial: () => Container(),
                      loading: () => Container(),
                      success: (userInfo) => Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Text(
                          userInfo.location,
                          style: const TextStyle(
                            color: Palette.mediumDark,
                          ),
                        ),
                      ),
                      failure: (err) => const Text("Došlo je do greške"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () async {
                  final route = MaterialPageRoute(builder: (context) => const EditAccountScreen());
                  await Navigator.of(context).push(route);
                  accountInfoProvider.getInfo();
                },
                style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(5)),
                child: Container(
                  alignment: Alignment.center,
                  width: 85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.edit,
                        color: Palette.dark,
                        size: 16,
                      ),
                      Text(
                        "Izmijeni",
                        style: TextStyle(color: Palette.dark, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  StorageRepository.logout();
                  final route = MaterialPageRoute(builder: (context) => WelcomeScreen());
                  Navigator.of(context).pushAndRemoveUntil(route, (route) => false);
                },
                style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(5)),
                child: Container(
                  width: 85,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.logout,
                        color: Palette.dark,
                        size: 16,
                      ),
                      Text(
                        "Odjavi se",
                        style: TextStyle(color: Palette.dark, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
