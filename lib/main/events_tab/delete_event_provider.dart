import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class DeleteEventProvider extends RequestProvider {
  final Event event;

  DeleteEventProvider(this.event);

  void delete() {
    executeRequest(requestBuilder: () => NetworkRepository.deleteEvent(event.eventID));
  }
}
