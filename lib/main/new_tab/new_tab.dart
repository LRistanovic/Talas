import 'package:flutter/material.dart';
import 'package:talas/main/new_tab/new_community/new_community_screen.dart';
import 'package:talas/main/new_tab/new_event/new_event_screen.dart';
import 'package:talas/palette.dart';

class NewTab extends StatelessWidget {
  const NewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      child: Column(
        children: [
          OutlinedButton(
            onPressed: () {
              final route = MaterialPageRoute(builder: (context) => const NewCommunityScreen());
              Navigator.of(context).push(route);
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Palette.dark,
            ),
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text('Nova zajednica'),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              final route = MaterialPageRoute(builder: (context) => const NewEventScreen());
              Navigator.of(context).push(route);
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Palette.dark,
            ),
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text('Novi događaj'),
            ),
          ),
        ],
      ),
    );
  }
}
