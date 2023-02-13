import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class EventParticipantsProvider extends RequestProvider {
  final Event event;

  EventParticipantsProvider({required this.event}) {
    fetch();
  }

  void fetch() {
    executeRequest(requestBuilder: () => NetworkRepository.getEventParticipants(event.eventID));
  }
}
