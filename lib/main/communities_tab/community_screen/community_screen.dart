import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/main/communities_tab/community_screen/community_event_widget.dart';
import 'package:talas/main/communities_tab/community_screen/community_events_provider.dart';
import 'package:talas/main/communities_tab/community_screen/join_leave_community_provider.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/palette.dart';

class CommunityScreen extends StatelessWidget {
  final Community community;

  const CommunityScreen({required this.community, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(community.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Palette.primary, width: 2),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "http://talas.gimnazijapg.me/images/community/${community.communityID}.png",
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: ChangeNotifierProvider(
                      create: (context) => JoinLeaveCommunityProvider(community: community),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 160,
                                child: Text(
                                  community.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Palette.primary,
                                  ),
                                ),
                              ),
                              Consumer<JoinLeaveCommunityProvider>(
                                builder: (_, joinLeaveCommunityProvider, __) => !community.isMember
                                    ? ElevatedButton(
                                        onPressed: joinLeaveCommunityProvider.join,
                                        style: ElevatedButton.styleFrom(
                                          // padding: EdgeInsets.zero,
                                          padding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                                        ),
                                        child: const SizedBox(
                                          width: 80,
                                          child: Center(
                                            child: Text("Pridruži se"),
                                          ),
                                        ),
                                      )
                                    : OutlinedButton(
                                        onPressed: joinLeaveCommunityProvider.leave,
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                                        ),
                                        child: const SizedBox(
                                          width: 80,
                                          child: Center(
                                            child: Text("Napusti"),
                                          ),
                                        ),
                                      ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Consumer<JoinLeaveCommunityProvider>(
                              builder: (_, __, ___) => Text(
                                "Članova: ${community.numMembers}",
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  color: Palette.mediumDark,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              community.description,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2),
            ChangeNotifierProvider(
              create: (context) => CommunityEventsProvider(communityId: community.communityID),
              child: Consumer<CommunityEventsProvider>(
                builder: (_, communityEventsProvider, __) => communityEventsProvider.state.when(
                  initial: () => Container(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (events) => Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        communityEventsProvider.fetch();
                      },
                      child: ListView(
                        children: events
                            .map<Widget>((event) => CommunityEventWidget(
                                  event: event,
                                  eventsProvider: communityEventsProvider,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  failure: (err) => Text("Došlo je do greške: $err"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
