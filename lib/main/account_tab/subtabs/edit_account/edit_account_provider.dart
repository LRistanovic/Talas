import 'package:image_picker/image_picker.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class EditAccountProvider extends RequestProvider {
  String? password = "";
  String? email = "";
  String? name = "";
  String? location = "";
  XFile? _newImage;

  set newImage(XFile? img) {
    _newImage = img;
    notifyListeners();
  }

  XFile? get newImage => _newImage;

  EditAccountProvider(User oldUserInfo) {
    email = oldUserInfo.email;
    name = oldUserInfo.name;
    location = oldUserInfo.location;
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    newImage = await picker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

  void confirm() {
    if (email == "") email = null;
    if (name == "") name = null;
    if (password == "") password = null;
    if (location == "") location = null;
    executeRequest(
        requestBuilder: () => NetworkRepository.editProfileInfo(
              name: name,
              email: email,
              password: password,
              location: location,
              image: _newImage,
            ));
  }
}
