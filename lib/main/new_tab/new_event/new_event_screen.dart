import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/common/listener.dart';
import 'package:talas/common/widgets.dart';
import 'package:talas/main/account_tab/providers/communities_provider.dart';
import 'package:talas/main/new_tab/new_event/new_event_provider.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/networking/request_provider/request_state.dart';
import 'package:talas/palette.dart';

class NewEventScreen extends StatelessWidget {
  const NewEventScreen({super.key});

  List<DropdownMenuItem> itemsFromCommunities(List<Community> communities) {
    List<DropdownMenuItem> items = [];
    for (final community in communities) {
      final item = DropdownMenuItem(
        value: community,
        child: SizedBox(
          width: 200,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  community.name,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  community.location,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Palette.mediumDark,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
      items.add(item);
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Napravi novi događaj"),
        backgroundColor: Palette.primary,
      ),
      body: ChangeNotifierProvider(
        create: (context) => NewEventProvider(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 50, 40, 40),
            child: Column(
              children: [
                Consumer<NewEventProvider>(
                  builder: (_, newEventProvider, __) => ChangeNotifierProvider(
                    create: (context) => CommunitiesProvider(),
                    child: Consumer<CommunitiesProvider>(
                      builder: (_, communitiesProvider, __) => communitiesProvider.state.when(
                        initial: () => Container(),
                        loading: () => const CircularProgressIndicator(),
                        success: (communities) => DropdownButton(
                          hint: const Text("zajednica"),
                          icon: const Icon(Icons.people),
                          value: newEventProvider.community,
                          items: itemsFromCommunities(communities),
                          onChanged: (community) {
                            newEventProvider.community = community;
                          },
                        ),
                        failure: (err) => const Text("Došlo je do greške"),
                      ),
                    ),
                  ),
                ),
                Consumer<NewEventProvider>(
                  builder: (_, newEventProvider, __) => RegularInput(
                    hintText: "naslov",
                    onChanged: (String val) {
                      newEventProvider.title = val;
                    },
                  ),
                ),
                Consumer<NewEventProvider>(
                  builder: (_, newEventProvider, __) => RegularInput(
                    hintText: "mjesto",
                    onChanged: (String val) {
                      newEventProvider.location = val;
                    },
                  ),
                ),
                Consumer<NewEventProvider>(
                  builder: (_, newEventProvider, __) => DateTimePicker(
                    firstDate: DateTime(2023),
                    lastDate: DateTime(2025),
                    icon: const Icon(Icons.access_time),
                    dateHintText: "datum i vrijeme",
                    type: DateTimePickerType.dateTime,
                    onChanged: (dateTime) => {newEventProvider.time = DateTime.parse(dateTime)},
                  ),
                ),
                Consumer<NewEventProvider>(
                  builder: (_, newEventProvider, __) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "maksimalan broj učesnika",
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      ),
                      onChanged: (String val) {
                        newEventProvider.maxParticipants = int.parse(val);
                      },
                    ),
                  ),
                ),
                Consumer<NewEventProvider>(
                  builder: (_, newEventProvider, __) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: "opis",
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      ),
                      onChanged: (String val) {
                        newEventProvider.description = val;
                      },
                    ),
                  ),
                ),
                Consumer<NewEventProvider>(
                  builder: (_, newEventProvider, __) => ElevatedButton(
                    onPressed: newEventProvider.canConfirm() ? newEventProvider.confirm : null,
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: newEventProvider.state.when(
                        initial: () => const Text("Napravi"),
                        loading: () => const SizedBox(
                          width: 30,
                          height: 30,
                          child: CircularProgressIndicator(),
                        ),
                        success: (_) => const Text("Uspješno"),
                        failure: (_) => const Text("Došlo je do greške"),
                      ),
                    ),
                  ),
                ),
                ProviderListener<NewEventProvider>(
                  listener: (context, newEventProvider) {
                    if (newEventProvider.state is RequestStateSuccess) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Container(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
