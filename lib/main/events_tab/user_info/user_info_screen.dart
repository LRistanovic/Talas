import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:talas/assets.dart';
import 'package:talas/common/links.dart';
import 'package:talas/main/events_tab/user_info/user_communities.dart';
import 'package:talas/main/events_tab/user_info/user_info_provider.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/palette.dart';

class UserInfoScreen extends StatelessWidget {
  final User user;

  const UserInfoScreen(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informacije o korisniku"),
      ),
      body: ChangeNotifierProvider(
        create: (context) => UserInfoProvider(user.userID),
        child: Column(
          children: [
            SizedBox(
              height: 140,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 50,
                    top: 30,
                    child: Consumer<UserInfoProvider>(
                      builder: (_, userInfoProvider, __) => Container(
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
                            Links.profilePicture(user.userID),
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
                                child: const SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(),
                                ),
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
            Consumer<UserInfoProvider>(
              builder: (_, userInfoProvider, __) => userInfoProvider.state.when(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.assets_main_account_location_svg),
                Consumer<UserInfoProvider>(
                  builder: (_, userInfoProvider, __) => userInfoProvider.state.when(
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
            const SizedBox(height: 20),
            const Text(
              "Zajednice",
              style: TextStyle(fontSize: 15),
            ),
            Expanded(
              child: UserCommunities(user.userID),
            ),
          ],
        ),
      ),
    );
  }
}
