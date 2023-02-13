///
//  Generated code. Do not modify.
//  source: Talas.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class LoginUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginUserRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  LoginUserRequest._() : super();
  factory LoginUserRequest({
    $core.String? email,
    $core.String? password,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory LoginUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginUserRequest clone() => LoginUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginUserRequest copyWith(void Function(LoginUserRequest) updates) => super.copyWith((message) => updates(message as LoginUserRequest)) as LoginUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginUserRequest create() => LoginUserRequest._();
  LoginUserRequest createEmptyInstance() => create();
  static $pb.PbList<LoginUserRequest> createRepeated() => $pb.PbList<LoginUserRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginUserRequest>(create);
  static LoginUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class LoginUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginUserResponse', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userID', protoName: 'userID')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  LoginUserResponse._() : super();
  factory LoginUserResponse({
    $core.String? token,
    $fixnum.Int64? userID,
    $core.int? status,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory LoginUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginUserResponse clone() => LoginUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginUserResponse copyWith(void Function(LoginUserResponse) updates) => super.copyWith((message) => updates(message as LoginUserResponse)) as LoginUserResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginUserResponse create() => LoginUserResponse._();
  LoginUserResponse createEmptyInstance() => create();
  static $pb.PbList<LoginUserResponse> createRepeated() => $pb.PbList<LoginUserResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginUserResponse>(create);
  static LoginUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userID => $_getI64(1);
  @$pb.TagNumber(2)
  set userID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserID() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(2);
  @$pb.TagNumber(3)
  set status($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

class RegisterUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterUserRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..hasRequiredFields = false
  ;

  RegisterUserRequest._() : super();
  factory RegisterUserRequest({
    $core.String? name,
    $core.String? email,
    $core.String? password,
    $core.String? location,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    if (location != null) {
      _result.location = location;
    }
    return _result;
  }
  factory RegisterUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterUserRequest clone() => RegisterUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterUserRequest copyWith(void Function(RegisterUserRequest) updates) => super.copyWith((message) => updates(message as RegisterUserRequest)) as RegisterUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterUserRequest create() => RegisterUserRequest._();
  RegisterUserRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterUserRequest> createRepeated() => $pb.PbList<RegisterUserRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterUserRequest>(create);
  static RegisterUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get location => $_getSZ(3);
  @$pb.TagNumber(4)
  set location($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocation() => clearField(4);
}

class RegisterUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegisterUserResponse', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userID', protoName: 'userID')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RegisterUserResponse._() : super();
  factory RegisterUserResponse({
    $core.String? token,
    $fixnum.Int64? userID,
    $core.int? status,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory RegisterUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterUserResponse clone() => RegisterUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterUserResponse copyWith(void Function(RegisterUserResponse) updates) => super.copyWith((message) => updates(message as RegisterUserResponse)) as RegisterUserResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterUserResponse create() => RegisterUserResponse._();
  RegisterUserResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterUserResponse> createRepeated() => $pb.PbList<RegisterUserResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterUserResponse>(create);
  static RegisterUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userID => $_getI64(1);
  @$pb.TagNumber(2)
  set userID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserID() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(2);
  @$pb.TagNumber(3)
  set status($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

class UserInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserInfoRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userID', protoName: 'userID')
    ..hasRequiredFields = false
  ;

  UserInfoRequest._() : super();
  factory UserInfoRequest({
    $core.String? token,
    $fixnum.Int64? userID,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    return _result;
  }
  factory UserInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfoRequest clone() => UserInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfoRequest copyWith(void Function(UserInfoRequest) updates) => super.copyWith((message) => updates(message as UserInfoRequest)) as UserInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfoRequest create() => UserInfoRequest._();
  UserInfoRequest createEmptyInstance() => create();
  static $pb.PbList<UserInfoRequest> createRepeated() => $pb.PbList<UserInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static UserInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfoRequest>(create);
  static UserInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userID => $_getI64(1);
  @$pb.TagNumber(2)
  set userID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserID() => clearField(2);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profilePicture', protoName: 'profilePicture')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userID', protoName: 'userID')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $core.String? name,
    $core.String? location,
    $core.String? profilePicture,
    $core.String? email,
    $fixnum.Int64? userID,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (location != null) {
      _result.location = location;
    }
    if (profilePicture != null) {
      _result.profilePicture = profilePicture;
    }
    if (email != null) {
      _result.email = email;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get location => $_getSZ(1);
  @$pb.TagNumber(2)
  set location($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get profilePicture => $_getSZ(2);
  @$pb.TagNumber(3)
  set profilePicture($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfilePicture() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfilePicture() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get userID => $_getI64(4);
  @$pb.TagNumber(5)
  set userID($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserID() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserID() => clearField(5);
}

class Action extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Action', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'param')
    ..hasRequiredFields = false
  ;

  Action._() : super();
  factory Action({
    $core.int? type,
    $core.String? param,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (param != null) {
      _result.param = param;
    }
    return _result;
  }
  factory Action.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Action.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Action clone() => Action()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Action copyWith(void Function(Action) updates) => super.copyWith((message) => updates(message as Action)) as Action; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Action create() => Action._();
  Action createEmptyInstance() => create();
  static $pb.PbList<Action> createRepeated() => $pb.PbList<Action>();
  @$core.pragma('dart2js:noInline')
  static Action getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Action>(create);
  static Action? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get param => $_getSZ(1);
  @$pb.TagNumber(2)
  set param($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParam() => $_has(1);
  @$pb.TagNumber(2)
  void clearParam() => clearField(2);
}

class EditProfilePictureRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EditProfilePictureRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  EditProfilePictureRequest._() : super();
  factory EditProfilePictureRequest({
    $core.String? token,
    $core.List<$core.int>? image,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (image != null) {
      _result.image = image;
    }
    return _result;
  }
  factory EditProfilePictureRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditProfilePictureRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditProfilePictureRequest clone() => EditProfilePictureRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditProfilePictureRequest copyWith(void Function(EditProfilePictureRequest) updates) => super.copyWith((message) => updates(message as EditProfilePictureRequest)) as EditProfilePictureRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditProfilePictureRequest create() => EditProfilePictureRequest._();
  EditProfilePictureRequest createEmptyInstance() => create();
  static $pb.PbList<EditProfilePictureRequest> createRepeated() => $pb.PbList<EditProfilePictureRequest>();
  @$core.pragma('dart2js:noInline')
  static EditProfilePictureRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditProfilePictureRequest>(create);
  static EditProfilePictureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get image => $_getN(1);
  @$pb.TagNumber(2)
  set image($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => clearField(2);
}

class EditProfileInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EditProfileInfoRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..hasRequiredFields = false
  ;

  EditProfileInfoRequest._() : super();
  factory EditProfileInfoRequest({
    $core.String? token,
    $core.String? name,
    $core.String? email,
    $core.String? password,
    $core.String? location,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (name != null) {
      _result.name = name;
    }
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    if (location != null) {
      _result.location = location;
    }
    return _result;
  }
  factory EditProfileInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditProfileInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditProfileInfoRequest clone() => EditProfileInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditProfileInfoRequest copyWith(void Function(EditProfileInfoRequest) updates) => super.copyWith((message) => updates(message as EditProfileInfoRequest)) as EditProfileInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditProfileInfoRequest create() => EditProfileInfoRequest._();
  EditProfileInfoRequest createEmptyInstance() => create();
  static $pb.PbList<EditProfileInfoRequest> createRepeated() => $pb.PbList<EditProfileInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static EditProfileInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditProfileInfoRequest>(create);
  static EditProfileInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get location => $_getSZ(4);
  @$pb.TagNumber(5)
  set location($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocation() => clearField(5);
}

class Community extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Community', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'communityID', protoName: 'communityID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numMembers', protoName: 'numMembers')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAdmin', protoName: 'isAdmin')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isMember', protoName: 'isMember')
    ..hasRequiredFields = false
  ;

  Community._() : super();
  factory Community({
    $fixnum.Int64? communityID,
    $core.String? name,
    $core.String? location,
    $fixnum.Int64? numMembers,
    $core.String? icon,
    $core.String? description,
    $core.bool? isAdmin,
    $core.bool? isMember,
  }) {
    final _result = create();
    if (communityID != null) {
      _result.communityID = communityID;
    }
    if (name != null) {
      _result.name = name;
    }
    if (location != null) {
      _result.location = location;
    }
    if (numMembers != null) {
      _result.numMembers = numMembers;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    if (description != null) {
      _result.description = description;
    }
    if (isAdmin != null) {
      _result.isAdmin = isAdmin;
    }
    if (isMember != null) {
      _result.isMember = isMember;
    }
    return _result;
  }
  factory Community.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Community.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Community clone() => Community()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Community copyWith(void Function(Community) updates) => super.copyWith((message) => updates(message as Community)) as Community; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Community create() => Community._();
  Community createEmptyInstance() => create();
  static $pb.PbList<Community> createRepeated() => $pb.PbList<Community>();
  @$core.pragma('dart2js:noInline')
  static Community getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Community>(create);
  static Community? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get communityID => $_getI64(0);
  @$pb.TagNumber(1)
  set communityID($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommunityID() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommunityID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get location => $_getSZ(2);
  @$pb.TagNumber(3)
  set location($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get numMembers => $_getI64(3);
  @$pb.TagNumber(4)
  set numMembers($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumMembers() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumMembers() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get icon => $_getSZ(4);
  @$pb.TagNumber(5)
  set icon($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearIcon() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isAdmin => $_getBF(6);
  @$pb.TagNumber(7)
  set isAdmin($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsAdmin() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsAdmin() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isMember => $_getBF(7);
  @$pb.TagNumber(8)
  set isMember($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsMember() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsMember() => clearField(8);
}

class CreateCommunityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateCommunityRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  CreateCommunityRequest._() : super();
  factory CreateCommunityRequest({
    $core.String? name,
    $core.String? location,
    $core.String? description,
    $core.String? token,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (location != null) {
      _result.location = location;
    }
    if (description != null) {
      _result.description = description;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory CreateCommunityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCommunityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCommunityRequest clone() => CreateCommunityRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCommunityRequest copyWith(void Function(CreateCommunityRequest) updates) => super.copyWith((message) => updates(message as CreateCommunityRequest)) as CreateCommunityRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateCommunityRequest create() => CreateCommunityRequest._();
  CreateCommunityRequest createEmptyInstance() => create();
  static $pb.PbList<CreateCommunityRequest> createRepeated() => $pb.PbList<CreateCommunityRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateCommunityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCommunityRequest>(create);
  static CreateCommunityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get location => $_getSZ(1);
  @$pb.TagNumber(2)
  set location($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);
}

class EditCommunityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EditCommunityRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'communityID', protoName: 'communityID')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  EditCommunityRequest._() : super();
  factory EditCommunityRequest({
    $core.String? token,
    $fixnum.Int64? communityID,
    $core.String? name,
    $core.String? location,
    $core.String? description,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (communityID != null) {
      _result.communityID = communityID;
    }
    if (name != null) {
      _result.name = name;
    }
    if (location != null) {
      _result.location = location;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory EditCommunityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditCommunityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditCommunityRequest clone() => EditCommunityRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditCommunityRequest copyWith(void Function(EditCommunityRequest) updates) => super.copyWith((message) => updates(message as EditCommunityRequest)) as EditCommunityRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditCommunityRequest create() => EditCommunityRequest._();
  EditCommunityRequest createEmptyInstance() => create();
  static $pb.PbList<EditCommunityRequest> createRepeated() => $pb.PbList<EditCommunityRequest>();
  @$core.pragma('dart2js:noInline')
  static EditCommunityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditCommunityRequest>(create);
  static EditCommunityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get communityID => $_getI64(1);
  @$pb.TagNumber(2)
  set communityID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommunityID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommunityID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get location => $_getSZ(3);
  @$pb.TagNumber(4)
  set location($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocation() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);
}

class EditCommunityIconRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EditCommunityIconRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'communityID', protoName: 'communityID')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  EditCommunityIconRequest._() : super();
  factory EditCommunityIconRequest({
    $core.String? token,
    $fixnum.Int64? communityID,
    $core.List<$core.int>? icon,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (communityID != null) {
      _result.communityID = communityID;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    return _result;
  }
  factory EditCommunityIconRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditCommunityIconRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditCommunityIconRequest clone() => EditCommunityIconRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditCommunityIconRequest copyWith(void Function(EditCommunityIconRequest) updates) => super.copyWith((message) => updates(message as EditCommunityIconRequest)) as EditCommunityIconRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditCommunityIconRequest create() => EditCommunityIconRequest._();
  EditCommunityIconRequest createEmptyInstance() => create();
  static $pb.PbList<EditCommunityIconRequest> createRepeated() => $pb.PbList<EditCommunityIconRequest>();
  @$core.pragma('dart2js:noInline')
  static EditCommunityIconRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditCommunityIconRequest>(create);
  static EditCommunityIconRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get communityID => $_getI64(1);
  @$pb.TagNumber(2)
  set communityID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommunityID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommunityID() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get icon => $_getN(2);
  @$pb.TagNumber(3)
  set icon($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);
}

class JoinLeaveCommunityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JoinLeaveCommunityRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'communityID', protoName: 'communityID')
    ..hasRequiredFields = false
  ;

  JoinLeaveCommunityRequest._() : super();
  factory JoinLeaveCommunityRequest({
    $core.String? token,
    $fixnum.Int64? communityID,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (communityID != null) {
      _result.communityID = communityID;
    }
    return _result;
  }
  factory JoinLeaveCommunityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinLeaveCommunityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinLeaveCommunityRequest clone() => JoinLeaveCommunityRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinLeaveCommunityRequest copyWith(void Function(JoinLeaveCommunityRequest) updates) => super.copyWith((message) => updates(message as JoinLeaveCommunityRequest)) as JoinLeaveCommunityRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinLeaveCommunityRequest create() => JoinLeaveCommunityRequest._();
  JoinLeaveCommunityRequest createEmptyInstance() => create();
  static $pb.PbList<JoinLeaveCommunityRequest> createRepeated() => $pb.PbList<JoinLeaveCommunityRequest>();
  @$core.pragma('dart2js:noInline')
  static JoinLeaveCommunityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinLeaveCommunityRequest>(create);
  static JoinLeaveCommunityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get communityID => $_getI64(1);
  @$pb.TagNumber(2)
  set communityID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommunityID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommunityID() => clearField(2);
}

class SearchCommunityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchCommunityRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  SearchCommunityRequest._() : super();
  factory SearchCommunityRequest({
    $core.String? name,
    $core.String? location,
    $core.String? token,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (location != null) {
      _result.location = location;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory SearchCommunityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchCommunityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchCommunityRequest clone() => SearchCommunityRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchCommunityRequest copyWith(void Function(SearchCommunityRequest) updates) => super.copyWith((message) => updates(message as SearchCommunityRequest)) as SearchCommunityRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchCommunityRequest create() => SearchCommunityRequest._();
  SearchCommunityRequest createEmptyInstance() => create();
  static $pb.PbList<SearchCommunityRequest> createRepeated() => $pb.PbList<SearchCommunityRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchCommunityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchCommunityRequest>(create);
  static SearchCommunityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get location => $_getSZ(1);
  @$pb.TagNumber(2)
  set location($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class CreateEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateEventRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'communityID', protoName: 'communityID')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxParticipants', protoName: 'maxParticipants')
    ..hasRequiredFields = false
  ;

  CreateEventRequest._() : super();
  factory CreateEventRequest({
    $core.String? token,
    $fixnum.Int64? communityID,
    $core.String? title,
    $fixnum.Int64? time,
    $core.String? location,
    $core.String? description,
    $fixnum.Int64? maxParticipants,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (communityID != null) {
      _result.communityID = communityID;
    }
    if (title != null) {
      _result.title = title;
    }
    if (time != null) {
      _result.time = time;
    }
    if (location != null) {
      _result.location = location;
    }
    if (description != null) {
      _result.description = description;
    }
    if (maxParticipants != null) {
      _result.maxParticipants = maxParticipants;
    }
    return _result;
  }
  factory CreateEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateEventRequest clone() => CreateEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateEventRequest copyWith(void Function(CreateEventRequest) updates) => super.copyWith((message) => updates(message as CreateEventRequest)) as CreateEventRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateEventRequest create() => CreateEventRequest._();
  CreateEventRequest createEmptyInstance() => create();
  static $pb.PbList<CreateEventRequest> createRepeated() => $pb.PbList<CreateEventRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateEventRequest>(create);
  static CreateEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get communityID => $_getI64(1);
  @$pb.TagNumber(2)
  set communityID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommunityID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommunityID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get time => $_getI64(3);
  @$pb.TagNumber(4)
  set time($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get location => $_getSZ(4);
  @$pb.TagNumber(5)
  set location($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocation() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get maxParticipants => $_getI64(6);
  @$pb.TagNumber(7)
  set maxParticipants($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMaxParticipants() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxParticipants() => clearField(7);
}

class Event extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Event', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventID', protoName: 'eventID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publishedTime', protoName: 'publishedTime')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'participants')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxParticipants', protoName: 'maxParticipants')
    ..aOM<User>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creatorInfo', protoName: 'creatorInfo', subBuilder: User.create)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'joined')
    ..aOM<Community>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'communityInfo', protoName: 'communityInfo', subBuilder: Community.create)
    ..hasRequiredFields = false
  ;

  Event._() : super();
  factory Event({
    $fixnum.Int64? eventID,
    $core.String? title,
    $fixnum.Int64? time,
    $fixnum.Int64? publishedTime,
    $core.String? location,
    $core.String? description,
    $fixnum.Int64? participants,
    $fixnum.Int64? maxParticipants,
    User? creatorInfo,
    $core.bool? joined,
    Community? communityInfo,
  }) {
    final _result = create();
    if (eventID != null) {
      _result.eventID = eventID;
    }
    if (title != null) {
      _result.title = title;
    }
    if (time != null) {
      _result.time = time;
    }
    if (publishedTime != null) {
      _result.publishedTime = publishedTime;
    }
    if (location != null) {
      _result.location = location;
    }
    if (description != null) {
      _result.description = description;
    }
    if (participants != null) {
      _result.participants = participants;
    }
    if (maxParticipants != null) {
      _result.maxParticipants = maxParticipants;
    }
    if (creatorInfo != null) {
      _result.creatorInfo = creatorInfo;
    }
    if (joined != null) {
      _result.joined = joined;
    }
    if (communityInfo != null) {
      _result.communityInfo = communityInfo;
    }
    return _result;
  }
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get eventID => $_getI64(0);
  @$pb.TagNumber(1)
  set eventID($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventID() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get publishedTime => $_getI64(3);
  @$pb.TagNumber(4)
  set publishedTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublishedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublishedTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get location => $_getSZ(4);
  @$pb.TagNumber(5)
  set location($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocation() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get participants => $_getI64(6);
  @$pb.TagNumber(7)
  set participants($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasParticipants() => $_has(6);
  @$pb.TagNumber(7)
  void clearParticipants() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get maxParticipants => $_getI64(7);
  @$pb.TagNumber(8)
  set maxParticipants($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMaxParticipants() => $_has(7);
  @$pb.TagNumber(8)
  void clearMaxParticipants() => clearField(8);

  @$pb.TagNumber(9)
  User get creatorInfo => $_getN(8);
  @$pb.TagNumber(9)
  set creatorInfo(User v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreatorInfo() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatorInfo() => clearField(9);
  @$pb.TagNumber(9)
  User ensureCreatorInfo() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.bool get joined => $_getBF(9);
  @$pb.TagNumber(10)
  set joined($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasJoined() => $_has(9);
  @$pb.TagNumber(10)
  void clearJoined() => clearField(10);

  @$pb.TagNumber(11)
  Community get communityInfo => $_getN(10);
  @$pb.TagNumber(11)
  set communityInfo(Community v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCommunityInfo() => $_has(10);
  @$pb.TagNumber(11)
  void clearCommunityInfo() => clearField(11);
  @$pb.TagNumber(11)
  Community ensureCommunityInfo() => $_ensure(10);
}

class InteractWithEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InteractWithEventRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventID', protoName: 'eventID')
    ..hasRequiredFields = false
  ;

  InteractWithEventRequest._() : super();
  factory InteractWithEventRequest({
    $core.String? token,
    $core.int? action,
    $fixnum.Int64? eventID,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (action != null) {
      _result.action = action;
    }
    if (eventID != null) {
      _result.eventID = eventID;
    }
    return _result;
  }
  factory InteractWithEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InteractWithEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InteractWithEventRequest clone() => InteractWithEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InteractWithEventRequest copyWith(void Function(InteractWithEventRequest) updates) => super.copyWith((message) => updates(message as InteractWithEventRequest)) as InteractWithEventRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InteractWithEventRequest create() => InteractWithEventRequest._();
  InteractWithEventRequest createEmptyInstance() => create();
  static $pb.PbList<InteractWithEventRequest> createRepeated() => $pb.PbList<InteractWithEventRequest>();
  @$core.pragma('dart2js:noInline')
  static InteractWithEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InteractWithEventRequest>(create);
  static InteractWithEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get action => $_getIZ(1);
  @$pb.TagNumber(2)
  set action($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get eventID => $_getI64(2);
  @$pb.TagNumber(3)
  set eventID($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEventID() => $_has(2);
  @$pb.TagNumber(3)
  void clearEventID() => clearField(3);
}

class DeleteEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteEventRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventID', protoName: 'eventID')
    ..hasRequiredFields = false
  ;

  DeleteEventRequest._() : super();
  factory DeleteEventRequest({
    $core.String? token,
    $fixnum.Int64? eventID,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (eventID != null) {
      _result.eventID = eventID;
    }
    return _result;
  }
  factory DeleteEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEventRequest clone() => DeleteEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEventRequest copyWith(void Function(DeleteEventRequest) updates) => super.copyWith((message) => updates(message as DeleteEventRequest)) as DeleteEventRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteEventRequest create() => DeleteEventRequest._();
  DeleteEventRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteEventRequest> createRepeated() => $pb.PbList<DeleteEventRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEventRequest>(create);
  static DeleteEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get eventID => $_getI64(1);
  @$pb.TagNumber(2)
  set eventID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventID() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventID() => clearField(2);
}

class GetEventParticipantsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetEventParticipantsRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventID', protoName: 'eventID')
    ..hasRequiredFields = false
  ;

  GetEventParticipantsRequest._() : super();
  factory GetEventParticipantsRequest({
    $core.String? token,
    $fixnum.Int64? eventID,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (eventID != null) {
      _result.eventID = eventID;
    }
    return _result;
  }
  factory GetEventParticipantsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEventParticipantsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEventParticipantsRequest clone() => GetEventParticipantsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEventParticipantsRequest copyWith(void Function(GetEventParticipantsRequest) updates) => super.copyWith((message) => updates(message as GetEventParticipantsRequest)) as GetEventParticipantsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetEventParticipantsRequest create() => GetEventParticipantsRequest._();
  GetEventParticipantsRequest createEmptyInstance() => create();
  static $pb.PbList<GetEventParticipantsRequest> createRepeated() => $pb.PbList<GetEventParticipantsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEventParticipantsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEventParticipantsRequest>(create);
  static GetEventParticipantsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get eventID => $_getI64(1);
  @$pb.TagNumber(2)
  set eventID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventID() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventID() => clearField(2);
}

class GetCommunityEventsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCommunityEventsRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'communityID', protoName: 'communityID')
    ..hasRequiredFields = false
  ;

  GetCommunityEventsRequest._() : super();
  factory GetCommunityEventsRequest({
    $core.String? token,
    $fixnum.Int64? communityID,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (communityID != null) {
      _result.communityID = communityID;
    }
    return _result;
  }
  factory GetCommunityEventsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCommunityEventsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCommunityEventsRequest clone() => GetCommunityEventsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCommunityEventsRequest copyWith(void Function(GetCommunityEventsRequest) updates) => super.copyWith((message) => updates(message as GetCommunityEventsRequest)) as GetCommunityEventsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCommunityEventsRequest create() => GetCommunityEventsRequest._();
  GetCommunityEventsRequest createEmptyInstance() => create();
  static $pb.PbList<GetCommunityEventsRequest> createRepeated() => $pb.PbList<GetCommunityEventsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCommunityEventsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCommunityEventsRequest>(create);
  static GetCommunityEventsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get communityID => $_getI64(1);
  @$pb.TagNumber(2)
  set communityID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommunityID() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommunityID() => clearField(2);
}

class StringMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StringMessage', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'val')
    ..hasRequiredFields = false
  ;

  StringMessage._() : super();
  factory StringMessage({
    $core.String? val,
  }) {
    final _result = create();
    if (val != null) {
      _result.val = val;
    }
    return _result;
  }
  factory StringMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringMessage clone() => StringMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringMessage copyWith(void Function(StringMessage) updates) => super.copyWith((message) => updates(message as StringMessage)) as StringMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StringMessage create() => StringMessage._();
  StringMessage createEmptyInstance() => create();
  static $pb.PbList<StringMessage> createRepeated() => $pb.PbList<StringMessage>();
  @$core.pragma('dart2js:noInline')
  static StringMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringMessage>(create);
  static StringMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get val => $_getSZ(0);
  @$pb.TagNumber(1)
  set val($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => clearField(1);
}

class Int64Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Int64Message', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'val')
    ..hasRequiredFields = false
  ;

  Int64Message._() : super();
  factory Int64Message({
    $fixnum.Int64? val,
  }) {
    final _result = create();
    if (val != null) {
      _result.val = val;
    }
    return _result;
  }
  factory Int64Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Int64Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Int64Message clone() => Int64Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Int64Message copyWith(void Function(Int64Message) updates) => super.copyWith((message) => updates(message as Int64Message)) as Int64Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Int64Message create() => Int64Message._();
  Int64Message createEmptyInstance() => create();
  static $pb.PbList<Int64Message> createRepeated() => $pb.PbList<Int64Message>();
  @$core.pragma('dart2js:noInline')
  static Int64Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int64Message>(create);
  static Int64Message? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => clearField(1);
}

