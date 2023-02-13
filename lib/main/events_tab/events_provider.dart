import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class EventsProvider extends RequestProvider {
  EventsProvider() {
    fetch();
  }

  void fetch() {
    executeRequest(requestBuilder: NetworkRepository.getJoinedEvents);
  }
}
