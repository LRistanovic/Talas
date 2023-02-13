import 'package:image_picker/image_picker.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class NewCommunityProvider extends RequestProvider {
  String _name = "";
  String _location = "";
  String _description = "";
  XFile? _image;

  XFile? get image => _image;

  set name(String val) {
    _name = val;
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

  bool canConfirm() {
    return _name != "" &&
        _location != "" &&
        _description != "" &&
        _name.length < 255 &&
        _location.length < 255 &&
        _description.length < 2000 &&
        _image != null;
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    _image = await picker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

  void confirm() async {
    executeRequest(
      requestBuilder: () => NetworkRepository.createCommunity(
        name: _name,
        location: _location,
        description: _description,
        image: _image!,
      ),
    );
  }
}
