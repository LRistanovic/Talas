import 'package:image_picker/image_picker.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class RegisterProvider extends RequestProvider {
  String _name = "";
  String _email = "";
  String _password = "";
  String _location = "";
  XFile? _image;

  XFile? get image => _image;

  set name(String val) {
    _name = val;
    notifyListeners();
  }

  set email(String val) {
    _email = val;
    notifyListeners();
  }

  set password(String val) {
    _password = val;
    notifyListeners();
  }

  set location(String val) {
    _location = val;
    notifyListeners();
  }

  bool canRegister() {
    return _name != "" &&
        _email != "" &&
        _location != "" &&
        _password.length >= 8 &&
        _name.length < 255 &&
        _email.length < 255 &&
        _location.length < 255;
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    _image = await picker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

  void register() async {
    executeRequest(
      requestBuilder: () => NetworkRepository.registerUser(
        email: _email,
        password: _password,
        name: _name,
        location: _location,
        image: _image,
      ),
    );
  }
}
