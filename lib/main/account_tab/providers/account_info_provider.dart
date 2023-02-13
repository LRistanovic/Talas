import 'package:flutter/cupertino.dart';
import 'package:talas/assets.dart';
import 'package:talas/networking/network_repository.dart';
import 'package:talas/networking/request_provider/request_provider.dart';

class AccountInfoProvider extends RequestProvider {
  AccountInfoProvider() {
    getInfo();
  }

  void getInfo() {
    executeRequest(requestBuilder: () => NetworkRepository.getUserInfo(NetworkRepository.myId));
  }

  final defaultProfilePicture = const AssetImage(Assets.assets_default_pfp_png);
}
