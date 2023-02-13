import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class SearchCommunitiesProvider extends RequestProvider {
  String name = "";
  String location = "";

  SearchCommunitiesProvider() {
    getRecommendedCommunities();
  }

  Future<void> getRecommendedCommunities() async {
    final me = await NetworkRepository.getUserInfo(NetworkRepository.myId);
    location = me.location;
    search();
  }

  void search() {
    executeRequest(requestBuilder: () => NetworkRepository.searchCommunities(name: name, location: location));
  }
}
