import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talas/main/events_tab/event_widget.dart';
import 'package:talas/main/events_tab/events_provider.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';

class EventsTab extends StatelessWidget {
  const EventsTab({super.key});

  List<Widget> eventsToWidgets(List<Event> events, EventsProvider eventsProvider) {
    List<Widget> widgets = [];
    for (final event in events) {
      if (event.time.toInt() <= DateTime.now().millisecondsSinceEpoch) {
        continue;
      }
      widgets.add(EventWidget(event: event, eventsProvider: eventsProvider));
    }
    if (widgets.isNotEmpty) {
      return widgets;
    }
    return [
      const Center(
        child: Text("Nema zakazanih događaja"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          const Text(
            "Zakazana događanja",
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          ChangeNotifierProvider(
            create: (context) => EventsProvider(),
            child: Consumer<EventsProvider>(
              builder: (_, eventsProvider, __) => eventsProvider.state.when(
                initial: () => Container(),
                loading: () => Expanded(
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    child: const CircularProgressIndicator(),
                  ),
                ),
                success: (events) => Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      eventsProvider.fetch();
                    },
                    child: ListView(
                      padding: const EdgeInsets.all(0),
                      children: eventsToWidgets(events, eventsProvider),
                    ),
                  ),
                ),
                failure: (err) => const Text("Došlo je do greške"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
