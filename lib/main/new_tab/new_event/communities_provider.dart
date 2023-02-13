import 'package:fixnum/fixnum.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class CommunitiesProvider extends RequestProvider {
  CommunitiesProvider() {
    executeRequest(requestBuilder: () => NetworkRepository.getCommunities(Int64(NetworkRepository.myId)));
  }
}
