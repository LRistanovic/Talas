import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/common/widgets.dart';
import 'package:talas/main/communities_tab/community_widget.dart';
import 'package:talas/main/explore_tab/search_communities_provider.dart';
import 'package:talas/palette.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ChangeNotifierProvider(
        create: (context) => SearchCommunitiesProvider(),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Traži zajednice",
                style: TextStyle(
                  color: Palette.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Consumer<SearchCommunitiesProvider>(
              builder: (_, searchCommunitiesProvider, __) => SizedBox(
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          RegularInput(
                            hintText: "naziv",
                            onChanged: (String val) {
                              searchCommunitiesProvider.name = val;
                            },
                          ),
                          RegularInput(
                            hintText: "mjesto",
                            onChanged: (String val) {
                              searchCommunitiesProvider.location = val;
                            },
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: searchCommunitiesProvider.search,
                      icon: const Icon(Icons.search),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            Consumer<SearchCommunitiesProvider>(
              builder: (_, searchCommunitiesProvider, __) => searchCommunitiesProvider.state.when(
                initial: () => Container(),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                success: (communities) => Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      searchCommunitiesProvider.search();
                    },
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: communities.map<Widget>((community) => CommunityWidget(community: community)).toList(),
                    ),
                  ),
                ),
                failure: (err) => Text("Došlo je do greške: $err"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
