import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/main/communities_tab/community_widget.dart';
import 'package:talas/main/events_tab/user_info/user_communities_provider.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/palette.dart';

class UserCommunities extends StatelessWidget {
  final Int64 userId;

  const UserCommunities(this.userId, {super.key});

  List<Widget> widgetsFromCommunities(List<Community> communities) {
    List<Widget> list = [];

    for (final community in communities) {
      Widget widget = Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: OutlinedButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.primary, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipOval(
                    child: Image.network(
                      "http://talas.gimnazijapg.me/images/community/${community.communityID}.png",
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      community.name,
                      style: const TextStyle(
                        color: Palette.dark,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Članova: ${community.numMembers}",
                      style: const TextStyle(
                        color: Palette.mediumDark,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
      list.add(widget);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ChangeNotifierProvider(
        create: (context) => UserCommunitiesProvider(userId),
        child: Consumer<UserCommunitiesProvider>(
          builder: (_, communitiesProvider, __) => communitiesProvider.state.when(
            initial: () => Container(),
            loading: () => Container(
              width: 20,
              height: 20,
              margin: const EdgeInsets.all(20),
              child: const Center(
                child: CircularProgressIndicator(
                  color: Palette.primary,
                ),
              ),
            ),
            success: (communities) => RefreshIndicator(
              onRefresh: () async {
                communitiesProvider.fetch();
              },
              child: ListView(
                padding: EdgeInsets.zero,
                children: communities.map<Widget>((community) => CommunityWidget(community: community)).toList(),
              ),
            ),
            failure: (err) => const Text("Došlo je do greške"),
          ),
        ),
      ),
    );
  }
}
