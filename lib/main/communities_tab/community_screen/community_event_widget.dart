import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/assets.dart';
import 'package:talas/common/links.dart';
import 'package:talas/common/listener.dart';
import 'package:talas/main/communities_tab/community_screen/community_events_provider.dart';
import 'package:talas/main/events_tab/delete_event_provider.dart';
import 'package:talas/main/events_tab/event_participants/event_participants_screen.dart';
import 'package:talas/main/events_tab/join_event_provider.dart';
import 'package:talas/main/events_tab/user_info/user_info_screen.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/networking/request_provider/request_state.dart';
import 'package:talas/palette.dart';

class CommunityEventWidget extends StatelessWidget {
  final Event event;
  final CommunityEventsProvider eventsProvider;

  const CommunityEventWidget({required this.event, required this.eventsProvider, super.key});

  String dateTimeToString(int milliseconds) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(milliseconds);
    return "${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour / 10 < 1 ? "0" : ""}${dateTime.hour}:${dateTime.minute / 10 < 1 ? "0" : ""}${dateTime.minute}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Palette.backgroundLight,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Objavljeno ${dateTimeToString(event.publishedTime.toInt())}",
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 12,
                  color: Palette.mediumDark,
                ),
              ),
              event.creatorInfo.userID == NetworkRepository.myId
                  ? IconButton(
                      onPressed: () async {
                        showDialog(
                          context: context,
                          builder: (context) => ChangeNotifierProvider(
                            create: (context) => DeleteEventProvider(event),
                            child: Consumer<DeleteEventProvider>(
                              builder: (_, deleteEventProvider, __) => AlertDialog(
                                title: const Text("Potvrdi izbor"),
                                actions: [
                                  TextButton(
                                    onPressed: deleteEventProvider.delete,
                                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                                    child: deleteEventProvider.state.when(
                                      initial: () => const Text("Izbriši događaj"),
                                      loading: () =>
                                          const Center(child: CircularProgressIndicator(color: Palette.primary)),
                                      success: (_) => const Text("Uspješno"),
                                      failure: (err) => const Text("Došlo je do greške"),
                                    ),
                                  ),
                                  ProviderListener<DeleteEventProvider>(
                                    listener: (context, deleteEventProvider) {
                                      if (deleteEventProvider.state is RequestStateSuccess) {
                                        Navigator.of(context).pop();
                                      }
                                    },
                                    child: Container(),
                                  ),
                                  TextButton(
                                    onPressed: Navigator.of(context).pop,
                                    style: TextButton.styleFrom(foregroundColor: Palette.mediumDark),
                                    child: const Text("Poništi"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).then(
                            (_) {
                              eventsProvider.fetch();
                            }
                        );
                      },
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.delete_outline,
                        size: 20,
                      ),
                    )
                  : Container(),
            ],
          ),
          TextButton(
            onPressed: () {
              final route = MaterialPageRoute(builder: (context) => UserInfoScreen(event.creatorInfo));
              Navigator.of(context).push(route);
            },
            style: TextButton.styleFrom(
              foregroundColor: Palette.dark,
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    Links.profilePicture(event.creatorInfo.userID),
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Image.asset(
                      Assets.assets_default_pfp_png,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.creatorInfo.name,
                      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Palette.primary,
                      ),
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        event.communityInfo.name,
                        style: const TextStyle(
                          color: Palette.light,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Palette.mediumDark,
                  size: 14,
                ),
                const SizedBox(width: 5),
                Text(
                  event.location,
                  style: const TextStyle(color: Palette.mediumDark),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.calendar_month_outlined,
                  color: Palette.mediumDark,
                  size: 14,
                ),
                const SizedBox(width: 5),
                Text(
                  dateTimeToString(event.time.toInt()),
                  style: const TextStyle(
                    fontSize: 12,
                    color: Palette.mediumDark,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              event.title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: double.infinity,
            child: Text(
              event.description,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          const Divider(thickness: 2),
          ChangeNotifierProvider(
            create: (context) => JoinLeaveEventProvider(event),
            child: Consumer<JoinLeaveEventProvider>(
              builder: (_, joinLeaveEventProvider, __) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  !event.joined
                      ? ElevatedButton(
                          onPressed:
                              event.participants < event.maxParticipants ? joinLeaveEventProvider.joinEvent : null,
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.zero,
                          ),
                          child: const SizedBox(
                            width: 70,
                            child: Center(
                              child: Text("Učestvuj"),
                            ),
                          ),
                        )
                      : OutlinedButton(
                          onPressed: joinLeaveEventProvider.leaveEvent,
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.zero,
                          ),
                          child: const SizedBox(
                            width: 70,
                            child: Center(
                              child: Text("Napusti"),
                            ),
                          ),
                        ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.people),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => EventParticipantsScreen(event: event),
                          );
                        },
                      ),
                      Text("${event.participants}/${event.maxParticipants}"),
                    ],
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
