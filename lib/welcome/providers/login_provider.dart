import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class LoginProvider extends RequestProvider {
  String _email = "";
  String _password = "";

  String get email => _email;

  String get password => _password;

  set email(String value) {
    _email = value;
    notifyListeners();
  }

  set password(String value) {
    _password = value;
    notifyListeners();
  }

  bool canLogin() {
    return _email != "" && _password != "";
  }

  Future<void> logIn() async {
    executeRequest(
      requestBuilder: () => NetworkRepository.loginUser(email: _email, password: _password),
    );
  }
}
