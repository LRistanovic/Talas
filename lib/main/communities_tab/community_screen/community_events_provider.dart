import 'package:fixnum/fixnum.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class CommunityEventsProvider extends RequestProvider {
  final Int64 communityId;
  CommunityEventsProvider({required this.communityId}) {
    fetch();
  }

  void fetch() {
    executeRequest(requestBuilder: () => NetworkRepository.getCommunityEvents(communityId: communityId));
  }

}
