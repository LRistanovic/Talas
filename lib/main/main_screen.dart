import 'package:flutter/material.dart';
import 'package:talas/main/account_tab/account_tab.dart';
import 'package:talas/main/events_tab/events_tab.dart';
import 'package:talas/main/explore_tab/explore_tab.dart';
import 'package:talas/main/new_tab/new_tab.dart';
import 'package:talas/palette.dart';
import 'package:talas/main/communities_tab/communities_tab.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: const BottomAppBar(
          child: TabBar(
            labelColor: Palette.dark,
            unselectedLabelColor: Palette.mediumLight,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.search)),
              Tab(icon: Icon(Icons.add_circle_outline)),
              Tab(icon: Icon(Icons.event)),
              Tab(icon: Icon(Icons.account_circle_outlined)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const CommunitiesTab(),
            ExploreTab(),
            const NewTab(),
            const EventsTab(),
            const AccountTab(),
          ],
        ),
      ),
    );
  }
}
