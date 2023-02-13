import 'package:flutter/material.dart';
import 'package:talas/main/communities_tab/community_screen/community_screen.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/palette.dart';

class CommunityWidget extends StatelessWidget {
  final Community community;

  const CommunityWidget({required this.community, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: OutlinedButton(
        onPressed: () {
          final route = MaterialPageRoute(builder: (context) => CommunityScreen(community: community));
          Navigator.of(context).push(route);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.primary, width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipOval(
                    child: Image.network(
                      "http://talas.gimnazijapg.me/images/community/${community.communityID}.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => const SizedBox(
                        width: 50,
                        height: 50,
                        child: Icon(Icons.people, color: Palette.mediumLight),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          community.name,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Palette.dark,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Članova: ${community.numMembers}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Palette.mediumDark,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
