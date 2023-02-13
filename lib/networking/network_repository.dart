import 'package:fixnum/fixnum.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:grpc/grpc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:talas/networking/proto/generated/Talas.pbgrpc.dart';
import 'package:talas/networking/storage_repository.dart';

class NetworkRepository {
  static ClientChannel channel = ClientChannel('talas.gimnazijapg.me');
  static TalasServiceClient stub =
      TalasServiceClient(channel, options: CallOptions(timeout: const Duration(seconds: 30)));
  static int myId = 0;
  static String token = "";

  static Future<bool> checkForCredentials() async {
    if (await StorageRepository.loggedIn()) {
      myId = await StorageRepository.userId();
      token = await StorageRepository.token();
      return true;
    }
    return false;
  }

  static Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    final response = await stub.loginUser(
      LoginUserRequest(
        password: password,
        email: email,
      ),
    );
    if (response.status != 0) {
      throw Error;
    }
    myId = response.userID.toInt();
    token = response.token;
    StorageRepository.store(token: token, userId: myId);
  }

  static Future<void> registerUser({
    required String name,
    required String email,
    required String password,
    required String location,
    XFile? image,
  }) async {
    final response = await stub.registerUser(
      RegisterUserRequest(
        email: email,
        password: password,
        location: location,
        name: name,
      ),
    );
    myId = response.userID.toInt();
    token = response.token;
    StorageRepository.store(token: token, userId: myId);

    if (image == null) return;

    await editProfilePicture(image);
  }

  static Future<User> getUserInfo(int userId) async {
    final response = await stub.getUserInfo(UserInfoRequest(token: token, userID: Int64(userId)));
    return response;
  }

  static Future<void> editProfilePicture(XFile image) async {
    final compressed = await FlutterImageCompress.compressWithFile(
      image.path,
      minWidth: 1000,
      minHeight: 1000,
    );
    await stub.editProfilePicture(
      EditProfilePictureRequest(
        image: compressed,
        token: token,
      ),
    );
  }

  static Future<void> editProfileInfo({
    String? password,
    String? name,
    String? location,
    String? email,
    XFile? image,
  }) async {
    await stub.editProfileInfo(
      EditProfileInfoRequest(
        token: token,
        location: location,
        name: name,
        password: password,
        email: email,
      ),
    );

    if (image != null) {
      await editProfilePicture(image);
    }
  }

  static Future<Community> getCommunityInfo(int communityId) async {
    await Future.delayed(const Duration(seconds: 1));
    return Community(name: "Programercici");
  }

  /*
  static Future<void> editCommunityInfo() async {}
  */

  static Future<void> editCommunityIcon({required XFile image, required Int64 communityId}) async {
    await stub.editCommunityIcon(EditCommunityIconRequest(
      icon: await FlutterImageCompress.compressWithFile(image.path),
      communityID: communityId,
      token: token,
    ));
  }

  static Future<void> joinCommunity({required Int64 communityId}) async {
    await stub.joinCommunity(JoinLeaveCommunityRequest(communityID: communityId, token: token));
  }

  static Future<void> leaveCommunity({required Int64 communityId}) async {
    await stub.leaveCommunity(JoinLeaveCommunityRequest(communityID: communityId, token: token));
  }

  static Future<List<Community>> getCommunities(Int64 userId) async {
    final List<Community> communities = [];
    await for (final community in stub.getCommunities(Int64Message(val: userId))) {
      communities.add(community);
    }
    return communities;
  }

  static Future<List<Community>> searchCommunities({required String name, required String location}) async {
    List<Community> communities = [];
    await for (final community in stub.searchCommunities(SearchCommunityRequest(
      token: token,
      name: name,
      location: location,
    ))) {
      communities.add(community);
    }
    return communities;
  }

  static Future<Int64> createCommunity({
    required String name,
    required String location,
    required String description,
    required XFile image,
  }) async {
    final communityId = await stub.createCommunity(CreateCommunityRequest(
      name: name,
      location: location,
      description: description,
      token: token,
    ));
    await editCommunityIcon(image: image, communityId: communityId.val);
    return communityId.val;
  }

  static Future<void> createEvent({
    required String description,
    required String location,
    required Int64 communityId,
    required int maxParticipants,
    required DateTime time,
    required String title,
  }) async {
    final id = await stub.createEvent(CreateEventRequest(
      token: token,
      description: description,
      location: location,
      communityID: communityId,
      maxParticipants: Int64(maxParticipants),
      time: Int64(time.millisecondsSinceEpoch),
      title: title,
    ));
  }

  static Future<List<User>> getEventParticipants(Int64 eventId) async {
    List<User> users = [];
    await for (final user in stub.getEventParticipants(GetEventParticipantsRequest(token: token, eventID: eventId))) {
      users.add(user);
    }
    return users;
  }

  static Future<List<Event>> getJoinedEvents() async {
    List<Event> events = [];
    await for (final event in stub.getJoinedEvents(StringMessage(val: token))) {
      events.add(event);
    }
    return events;
  }

  static Future<List<Event>> getCommunityEvents({required Int64 communityId}) async {
    List<Event> events = [];
    await for (final event
        in stub.getCommunityEvents(GetCommunityEventsRequest(token: token, communityID: communityId))) {
      events.add(event);
    }
    return events;
  }

  static Future<void> interactWithEvent({required Int64 eventId, required int action}) async {
    await stub.interactWithEvent(InteractWithEventRequest(eventID: eventId, token: token, action: action));
  }

  static Future<void> deleteEvent(Int64 eventId) async {
    await stub.deleteEvent(DeleteEventRequest(token: token, eventID: eventId));
  }
}
