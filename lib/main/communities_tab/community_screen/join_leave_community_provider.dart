import 'package:flutter/cupertino.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/proto/generated/Talas.pb.dart';

class JoinLeaveCommunityProvider extends ChangeNotifier {
  final Community community;

  JoinLeaveCommunityProvider({required this.community});

  void join() {
    community.isMember = true;
    community.numMembers++;
    NetworkRepository.joinCommunity(communityId: community.communityID);
    notifyListeners();
  }

  void leave() {
    community.isMember = false;
    community.numMembers--;
    NetworkRepository.leaveCommunity(communityId: community.communityID);
    notifyListeners();
  }
}
