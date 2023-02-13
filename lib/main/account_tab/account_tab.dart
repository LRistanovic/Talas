import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:talas/assets.dart';
import 'package:talas/main/account_tab/providers/account_info_provider.dart';
import 'package:talas/main/account_tab/subtabs/account_info_subtab.dart';
import 'package:talas/main/account_tab/subtabs/communities_subtab.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/palette.dart';

class AccountTab extends StatelessWidget {
  const AccountTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AccountInfoProvider(),
      child:
      Column(
        children: [
          SizedBox(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: SvgPicture.asset(Assets.assets_main_account_decoration_svg),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  top: 30,
                  child: Consumer<AccountInfoProvider>(
                    builder: (_, accountInfoProvider, __) => Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Palette.primary,
                            width: 2,
                          ),
                        ),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "http://talas.gimnazijapg.me/images/profile/${NetworkRepository.myId}.png",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          loadingBuilder: (_, Widget child, ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return Container(
                              color: Palette.light,
                              width: 100,
                              height: 100,
                              child: const CircularProgressIndicator(),
                            );
                          },
                          errorBuilder: (_, __, ___) => Image.asset(
                            Assets.assets_default_pfp_png,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Consumer<AccountInfoProvider>(
            builder: (_, accountInfoProvider, __) => accountInfoProvider.state.when(
              initial: () => Container(),
              loading: () => const SizedBox(
                width: 19,
                height: 19,
                child: CircularProgressIndicator(
                  color: Palette.primary,
                ),
              ),
              success: (userInfo) => Text(
                userInfo.name,
                style: const TextStyle(fontSize: 16),
              ),
              failure: (_) => const Text("Došlo je do greške"),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    labelColor: Palette.dark,
                    indicatorColor: Palette.dark,
                    tabs: [
                      Tab(text: "Zajednice"),
                      Tab(text: "O korisniku"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        const CommunitiesSubtab(),
                        Consumer<AccountInfoProvider>(
                          builder: (_, accountInfoProvider, __) => AccountInfoSubtab(accountInfoProvider),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
