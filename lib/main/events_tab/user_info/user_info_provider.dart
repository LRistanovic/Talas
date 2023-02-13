import 'package:fixnum/fixnum.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class UserInfoProvider extends RequestProvider {
  UserInfoProvider(Int64 userId) {
    executeRequest(requestBuilder: () => NetworkRepository.getUserInfo(userId.toInt()));
  }
}
