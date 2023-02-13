import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/main/communities_tab/communities_provider.dart';
import 'package:talas/main/communities_tab/community_widget.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';

class CommunitiesTab extends StatelessWidget {
  const CommunitiesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ChangeNotifierProvider(
        create: (context) => CommunitiesProvider(),
        child: Consumer<CommunitiesProvider>(
          builder: (_, communitiesProvider, __) => communitiesProvider.state.when(
            initial: () => Container(),
            loading: () => Container(
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            ),
            success: (communities) => RefreshIndicator(
              onRefresh: () async {
                communitiesProvider.fetch();
              },
              child: ListView(
                children:
                    communities.map<Widget>((Community community) => CommunityWidget(community: community)).toList(),
              ),
            ),
            failure: (err) => Text("Došlo je do greške: $err"),
          ),
        ),
      ),
    );
  }
}
