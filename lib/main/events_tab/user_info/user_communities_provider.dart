import 'package:fixnum/fixnum.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class UserCommunitiesProvider extends RequestProvider {
  Int64 userId;

  UserCommunitiesProvider(this.userId) {
    fetch();
  }

  void fetch() {
    executeRequest(requestBuilder: () => NetworkRepository.getCommunities(userId));
  }
}
