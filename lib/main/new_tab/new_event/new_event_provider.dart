import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class NewEventProvider extends RequestProvider {
  String _title = "";
  DateTime _time = DateTime(2023);
  String _location = "";
  String _description = "";
  int _maxParticipants = 0;
  Community? _community;

  Community? get community => _community;

  int get maxParticipants => _maxParticipants;

  set title(String val) {
    _title = val;
    notifyListeners();
  }

  set time(DateTime val) {
    _time = val;
    notifyListeners();
  }

  set location(String val) {
    _location = val;
    notifyListeners();
  }

  set description(String val) {
    _description = val;
    notifyListeners();
  }

  set maxParticipants(int val) {
    _maxParticipants = val;
    notifyListeners();
  }

  set community(Community? val) {
    _community = val;
    notifyListeners();
  }

  bool canConfirm() {
    return _title != "" &&
        _time.millisecondsSinceEpoch > DateTime.now().millisecondsSinceEpoch &&
        _location != "" &&
        _description != "" &&
        _maxParticipants != 0 &&
        _community != null &&
        _title.length < 255 &&
        _location.length < 255 &&
        _description.length < 2000;
  }

  void confirm() async {
    executeRequest(
      requestBuilder: () => NetworkRepository.createEvent(
        title: _title,
        location: _location,
        description: _description,
        time: _time,
        maxParticipants: _maxParticipants,
        communityId: _community!.communityID,
      ),
    );
  }
}
