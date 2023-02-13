import 'package:flutter/material.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';

class JoinLeaveEventProvider with ChangeNotifier {
  final Event event;

  JoinLeaveEventProvider(this.event);

  void joinEvent() {
    event.joined = true;
    event.participants++;
    NetworkRepository.interactWithEvent(eventId: event.eventID, action: 0);
    notifyListeners();
  }

  void leaveEvent() {
    event.joined = false;
    event.participants--;
    NetworkRepository.interactWithEvent(eventId: event.eventID, action: 1);
    notifyListeners();
  }
}
