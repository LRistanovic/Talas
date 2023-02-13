import 'package:fixnum/fixnum.dart';

abstract class Links {
  static String profilePicture(Int64 userId) {
    return "http://talas.gimnazijapg.me/images/profile/$userId.png";
  }

  static String communityPicture(Int64 communityId) {
    return "http://talas.gimnazijapg.me/images/community/$communityId.png";
  }
}
