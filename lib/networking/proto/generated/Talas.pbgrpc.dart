///
//  Generated code. Do not modify.
//  source: Talas.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Talas.pb.dart' as $0;
export 'Talas.pb.dart';

class TalasServiceClient extends $grpc.Client {
  static final _$loginUser =
      $grpc.ClientMethod<$0.LoginUserRequest, $0.LoginUserResponse>(
          '/TalasService/LoginUser',
          ($0.LoginUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LoginUserResponse.fromBuffer(value));
  static final _$registerUser =
      $grpc.ClientMethod<$0.RegisterUserRequest, $0.RegisterUserResponse>(
          '/TalasService/RegisterUser',
          ($0.RegisterUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegisterUserResponse.fromBuffer(value));
  static final _$getUserInfo = $grpc.ClientMethod<$0.UserInfoRequest, $0.User>(
      '/TalasService/GetUserInfo',
      ($0.UserInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$editProfilePicture =
      $grpc.ClientMethod<$0.EditProfilePictureRequest, $0.Int64Message>(
          '/TalasService/EditProfilePicture',
          ($0.EditProfilePictureRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value));
  static final _$editProfileInfo =
      $grpc.ClientMethod<$0.EditProfileInfoRequest, $0.Int64Message>(
          '/TalasService/EditProfileInfo',
          ($0.EditProfileInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value));
  static final _$getCommunityInfo =
      $grpc.ClientMethod<$0.Int64Message, $0.Community>(
          '/TalasService/GetCommunityInfo',
          ($0.Int64Message value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Community.fromBuffer(value));
  static final _$editCommunityInfo =
      $grpc.ClientMethod<$0.EditCommunityRequest, $0.Int64Message>(
          '/TalasService/EditCommunityInfo',
          ($0.EditCommunityRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value));
  static final _$editCommunityIcon =
      $grpc.ClientMethod<$0.EditCommunityIconRequest, $0.Int64Message>(
          '/TalasService/EditCommunityIcon',
          ($0.EditCommunityIconRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value));
  static final _$joinCommunity =
      $grpc.ClientMethod<$0.JoinLeaveCommunityRequest, $0.Int64Message>(
          '/TalasService/JoinCommunity',
          ($0.JoinLeaveCommunityRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value));
  static final _$leaveCommunity =
      $grpc.ClientMethod<$0.JoinLeaveCommunityRequest, $0.Int64Message>(
          '/TalasService/LeaveCommunity',
          ($0.JoinLeaveCommunityRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value));
  static final _$getCommunities =
      $grpc.ClientMethod<$0.Int64Message, $0.Community>(
          '/TalasService/GetCommunities',
          ($0.Int64Message value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Community.fromBuffer(value));
  static final _$searchCommunities =
      $grpc.ClientMethod<$0.SearchCommunityRequest, $0.Community>(
          '/TalasService/SearchCommunities',
          ($0.SearchCommunityRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Community.fromBuffer(value));
  static final _$createCommunity =
      $grpc.ClientMethod<$0.CreateCommunityRequest, $0.Int64Message>(
          '/TalasService/CreateCommunity',
          ($0.CreateCommunityRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value));
  static final _$createEvent =
      $grpc.ClientMethod<$0.CreateEventRequest, $0.Int64Message>(
          '/TalasService/CreateEvent',
          ($0.CreateEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value));
  static final _$getEventParticipants =
      $grpc.ClientMethod<$0.GetEventParticipantsRequest, $0.User>(
          '/TalasService/GetEventParticipants',
          ($0.GetEventParticipantsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$getJoinedEvents =
      $grpc.ClientMethod<$0.StringMessage, $0.Event>(
          '/TalasService/GetJoinedEvents',
          ($0.StringMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Event.fromBuffer(value));
  static final _$getCommunityEvents =
      $grpc.ClientMethod<$0.GetCommunityEventsRequest, $0.Event>(
          '/TalasService/GetCommunityEvents',
          ($0.GetCommunityEventsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Event.fromBuffer(value));
  static final _$interactWithEvent =
      $grpc.ClientMethod<$0.InteractWithEventRequest, $0.Int64Message>(
          '/TalasService/InteractWithEvent',
          ($0.InteractWithEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value));
  static final _$deleteEvent =
      $grpc.ClientMethod<$0.DeleteEventRequest, $0.Int64Message>(
          '/TalasService/DeleteEvent',
          ($0.DeleteEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value));

  TalasServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoginUserResponse> loginUser(
      $0.LoginUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.RegisterUserResponse> registerUser(
      $0.RegisterUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> getUserInfo($0.UserInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Int64Message> editProfilePicture(
      $0.EditProfilePictureRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editProfilePicture, request, options: options);
  }

  $grpc.ResponseFuture<$0.Int64Message> editProfileInfo(
      $0.EditProfileInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editProfileInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Community> getCommunityInfo($0.Int64Message request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCommunityInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Int64Message> editCommunityInfo(
      $0.EditCommunityRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editCommunityInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Int64Message> editCommunityIcon(
      $0.EditCommunityIconRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editCommunityIcon, request, options: options);
  }

  $grpc.ResponseFuture<$0.Int64Message> joinCommunity(
      $0.JoinLeaveCommunityRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$joinCommunity, request, options: options);
  }

  $grpc.ResponseFuture<$0.Int64Message> leaveCommunity(
      $0.JoinLeaveCommunityRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaveCommunity, request, options: options);
  }

  $grpc.ResponseStream<$0.Community> getCommunities($0.Int64Message request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getCommunities, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Community> searchCommunities(
      $0.SearchCommunityRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$searchCommunities, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Int64Message> createCommunity(
      $0.CreateCommunityRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCommunity, request, options: options);
  }

  $grpc.ResponseFuture<$0.Int64Message> createEvent(
      $0.CreateEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createEvent, request, options: options);
  }

  $grpc.ResponseStream<$0.User> getEventParticipants(
      $0.GetEventParticipantsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getEventParticipants, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Event> getJoinedEvents($0.StringMessage request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getJoinedEvents, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Event> getCommunityEvents(
      $0.GetCommunityEventsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getCommunityEvents, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Int64Message> interactWithEvent(
      $0.InteractWithEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$interactWithEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.Int64Message> deleteEvent(
      $0.DeleteEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteEvent, request, options: options);
  }
}

abstract class TalasServiceBase extends $grpc.Service {
  $core.String get $name => 'TalasService';

  TalasServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginUserRequest, $0.LoginUserResponse>(
        'LoginUser',
        loginUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginUserRequest.fromBuffer(value),
        ($0.LoginUserResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RegisterUserRequest, $0.RegisterUserResponse>(
            'RegisterUser',
            registerUser_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RegisterUserRequest.fromBuffer(value),
            ($0.RegisterUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserInfoRequest, $0.User>(
        'GetUserInfo',
        getUserInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfoRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.EditProfilePictureRequest, $0.Int64Message>(
            'EditProfilePicture',
            editProfilePicture_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.EditProfilePictureRequest.fromBuffer(value),
            ($0.Int64Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditProfileInfoRequest, $0.Int64Message>(
        'EditProfileInfo',
        editProfileInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditProfileInfoRequest.fromBuffer(value),
        ($0.Int64Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Int64Message, $0.Community>(
        'GetCommunityInfo',
        getCommunityInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value),
        ($0.Community value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditCommunityRequest, $0.Int64Message>(
        'EditCommunityInfo',
        editCommunityInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.EditCommunityRequest.fromBuffer(value),
        ($0.Int64Message value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.EditCommunityIconRequest, $0.Int64Message>(
            'EditCommunityIcon',
            editCommunityIcon_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.EditCommunityIconRequest.fromBuffer(value),
            ($0.Int64Message value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.JoinLeaveCommunityRequest, $0.Int64Message>(
            'JoinCommunity',
            joinCommunity_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.JoinLeaveCommunityRequest.fromBuffer(value),
            ($0.Int64Message value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.JoinLeaveCommunityRequest, $0.Int64Message>(
            'LeaveCommunity',
            leaveCommunity_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.JoinLeaveCommunityRequest.fromBuffer(value),
            ($0.Int64Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Int64Message, $0.Community>(
        'GetCommunities',
        getCommunities_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Int64Message.fromBuffer(value),
        ($0.Community value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchCommunityRequest, $0.Community>(
        'SearchCommunities',
        searchCommunities_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.SearchCommunityRequest.fromBuffer(value),
        ($0.Community value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateCommunityRequest, $0.Int64Message>(
        'CreateCommunity',
        createCommunity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateCommunityRequest.fromBuffer(value),
        ($0.Int64Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateEventRequest, $0.Int64Message>(
        'CreateEvent',
        createEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateEventRequest.fromBuffer(value),
        ($0.Int64Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetEventParticipantsRequest, $0.User>(
        'GetEventParticipants',
        getEventParticipants_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.GetEventParticipantsRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StringMessage, $0.Event>(
        'GetJoinedEvents',
        getJoinedEvents_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StringMessage.fromBuffer(value),
        ($0.Event value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCommunityEventsRequest, $0.Event>(
        'GetCommunityEvents',
        getCommunityEvents_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.GetCommunityEventsRequest.fromBuffer(value),
        ($0.Event value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.InteractWithEventRequest, $0.Int64Message>(
            'InteractWithEvent',
            interactWithEvent_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.InteractWithEventRequest.fromBuffer(value),
            ($0.Int64Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteEventRequest, $0.Int64Message>(
        'DeleteEvent',
        deleteEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteEventRequest.fromBuffer(value),
        ($0.Int64Message value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginUserResponse> loginUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.LoginUserRequest> request) async {
    return loginUser(call, await request);
  }

  $async.Future<$0.RegisterUserResponse> registerUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RegisterUserRequest> request) async {
    return registerUser(call, await request);
  }

  $async.Future<$0.User> getUserInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserInfoRequest> request) async {
    return getUserInfo(call, await request);
  }

  $async.Future<$0.Int64Message> editProfilePicture_Pre($grpc.ServiceCall call,
      $async.Future<$0.EditProfilePictureRequest> request) async {
    return editProfilePicture(call, await request);
  }

  $async.Future<$0.Int64Message> editProfileInfo_Pre($grpc.ServiceCall call,
      $async.Future<$0.EditProfileInfoRequest> request) async {
    return editProfileInfo(call, await request);
  }

  $async.Future<$0.Community> getCommunityInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Int64Message> request) async {
    return getCommunityInfo(call, await request);
  }

  $async.Future<$0.Int64Message> editCommunityInfo_Pre($grpc.ServiceCall call,
      $async.Future<$0.EditCommunityRequest> request) async {
    return editCommunityInfo(call, await request);
  }

  $async.Future<$0.Int64Message> editCommunityIcon_Pre($grpc.ServiceCall call,
      $async.Future<$0.EditCommunityIconRequest> request) async {
    return editCommunityIcon(call, await request);
  }

  $async.Future<$0.Int64Message> joinCommunity_Pre($grpc.ServiceCall call,
      $async.Future<$0.JoinLeaveCommunityRequest> request) async {
    return joinCommunity(call, await request);
  }

  $async.Future<$0.Int64Message> leaveCommunity_Pre($grpc.ServiceCall call,
      $async.Future<$0.JoinLeaveCommunityRequest> request) async {
    return leaveCommunity(call, await request);
  }

  $async.Stream<$0.Community> getCommunities_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Int64Message> request) async* {
    yield* getCommunities(call, await request);
  }

  $async.Stream<$0.Community> searchCommunities_Pre($grpc.ServiceCall call,
      $async.Future<$0.SearchCommunityRequest> request) async* {
    yield* searchCommunities(call, await request);
  }

  $async.Future<$0.Int64Message> createCommunity_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateCommunityRequest> request) async {
    return createCommunity(call, await request);
  }

  $async.Future<$0.Int64Message> createEvent_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateEventRequest> request) async {
    return createEvent(call, await request);
  }

  $async.Stream<$0.User> getEventParticipants_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetEventParticipantsRequest> request) async* {
    yield* getEventParticipants(call, await request);
  }

  $async.Stream<$0.Event> getJoinedEvents_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StringMessage> request) async* {
    yield* getJoinedEvents(call, await request);
  }

  $async.Stream<$0.Event> getCommunityEvents_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetCommunityEventsRequest> request) async* {
    yield* getCommunityEvents(call, await request);
  }

  $async.Future<$0.Int64Message> interactWithEvent_Pre($grpc.ServiceCall call,
      $async.Future<$0.InteractWithEventRequest> request) async {
    return interactWithEvent(call, await request);
  }

  $async.Future<$0.Int64Message> deleteEvent_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteEventRequest> request) async {
    return deleteEvent(call, await request);
  }

  $async.Future<$0.LoginUserResponse> loginUser(
      $grpc.ServiceCall call, $0.LoginUserRequest request);
  $async.Future<$0.RegisterUserResponse> registerUser(
      $grpc.ServiceCall call, $0.RegisterUserRequest request);
  $async.Future<$0.User> getUserInfo(
      $grpc.ServiceCall call, $0.UserInfoRequest request);
  $async.Future<$0.Int64Message> editProfilePicture(
      $grpc.ServiceCall call, $0.EditProfilePictureRequest request);
  $async.Future<$0.Int64Message> editProfileInfo(
      $grpc.ServiceCall call, $0.EditProfileInfoRequest request);
  $async.Future<$0.Community> getCommunityInfo(
      $grpc.ServiceCall call, $0.Int64Message request);
  $async.Future<$0.Int64Message> editCommunityInfo(
      $grpc.ServiceCall call, $0.EditCommunityRequest request);
  $async.Future<$0.Int64Message> editCommunityIcon(
      $grpc.ServiceCall call, $0.EditCommunityIconRequest request);
  $async.Future<$0.Int64Message> joinCommunity(
      $grpc.ServiceCall call, $0.JoinLeaveCommunityRequest request);
  $async.Future<$0.Int64Message> leaveCommunity(
      $grpc.ServiceCall call, $0.JoinLeaveCommunityRequest request);
  $async.Stream<$0.Community> getCommunities(
      $grpc.ServiceCall call, $0.Int64Message request);
  $async.Stream<$0.Community> searchCommunities(
      $grpc.ServiceCall call, $0.SearchCommunityRequest request);
  $async.Future<$0.Int64Message> createCommunity(
      $grpc.ServiceCall call, $0.CreateCommunityRequest request);
  $async.Future<$0.Int64Message> createEvent(
      $grpc.ServiceCall call, $0.CreateEventRequest request);
  $async.Stream<$0.User> getEventParticipants(
      $grpc.ServiceCall call, $0.GetEventParticipantsRequest request);
  $async.Stream<$0.Event> getJoinedEvents(
      $grpc.ServiceCall call, $0.StringMessage request);
  $async.Stream<$0.Event> getCommunityEvents(
      $grpc.ServiceCall call, $0.GetCommunityEventsRequest request);
  $async.Future<$0.Int64Message> interactWithEvent(
      $grpc.ServiceCall call, $0.InteractWithEventRequest request);
  $async.Future<$0.Int64Message> deleteEvent(
      $grpc.ServiceCall call, $0.DeleteEventRequest request);
}
