import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:provider/provider.dart';
import 'package:talas/assets.dart';
import 'package:talas/common/links.dart';
import 'package:talas/main/events_tab/event_participants/event_participants_provider.dart';
import 'package:talas/main/events_tab/user_info/user_info_screen.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/palette.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EventParticipantsScreen extends StatelessWidget {
  final Event event;

  const EventParticipantsScreen({required this.event, super.key});

  Widget participantToWidget(User user, BuildContext context) {
    return TextButton(
      onPressed: () {
        final route = MaterialPageRoute(builder: (_) => UserInfoScreen(user));
        Navigator.of(context).push(route);
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Palette.primary),
              ),
              child: ClipOval(
                child: Image.network(
                  Links.profilePicture(user.userID),
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                  loadingBuilder: (_, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return const SizedBox(
                      width: 30,
                      height: 30,
                      child: CircularProgressIndicator(),
                    );
                  },
                  errorBuilder: (_, __, ___) => Image.asset(
                    Assets.assets_default_pfp_png,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              user.name,
              style: const TextStyle(color: Palette.dark),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => EventParticipantsProvider(event: event),
        child: Consumer<EventParticipantsProvider>(
          builder: (_, eventParticipantsProvider, __) => eventParticipantsProvider.state.when(
            initial: () => Container(),
            loading: () => Center(
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              ),
            ),
            success: (participants) => Column(
              children: [
                event.creatorInfo.userID == NetworkRepository.myId
                    ? ElevatedButton(
                        onPressed: () async {
                          final mailtoLink = Mailto(
                            to: participants.map<String>((User participant) => participant.email).toList(),
                            subject: event.title,
                          );
                          await launchUrlString('$mailtoLink');
                        },
                        child: const Text("Pošalji email svim učesnicima"),
                      )
                    : Container(),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      eventParticipantsProvider.fetch();
                    },
                    child: ListView(
                      children: participants
                          .map<Widget>((User participant) => participantToWidget(participant, context))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            failure: (err) => Text("Došlo je do greške: $err"),
          ),
        ),
      ),
    );
  }
}
