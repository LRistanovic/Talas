///
//  Generated code. Do not modify.
//  source: Talas.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loginUserRequestDescriptor instead')
const LoginUserRequest$json = const {
  '1': 'LoginUserRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginUserRequestDescriptor = $convert.base64Decode('ChBMb2dpblVzZXJSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIaCghwYXNzd29yZBgCIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use loginUserResponseDescriptor instead')
const LoginUserResponse$json = const {
  '1': 'LoginUserResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'userID', '3': 2, '4': 1, '5': 3, '10': 'userID'},
    const {'1': 'status', '3': 3, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `LoginUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginUserResponseDescriptor = $convert.base64Decode('ChFMb2dpblVzZXJSZXNwb25zZRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SFgoGdXNlcklEGAIgASgDUgZ1c2VySUQSFgoGc3RhdHVzGAMgASgFUgZzdGF0dXM=');
@$core.Deprecated('Use registerUserRequestDescriptor instead')
const RegisterUserRequest$json = const {
  '1': 'RegisterUserRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'location', '3': 4, '4': 1, '5': 9, '10': 'location'},
  ],
};

/// Descriptor for `RegisterUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerUserRequestDescriptor = $convert.base64Decode('ChNSZWdpc3RlclVzZXJSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSFAoFZW1haWwYAiABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAMgASgJUghwYXNzd29yZBIaCghsb2NhdGlvbhgEIAEoCVIIbG9jYXRpb24=');
@$core.Deprecated('Use registerUserResponseDescriptor instead')
const RegisterUserResponse$json = const {
  '1': 'RegisterUserResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'userID', '3': 2, '4': 1, '5': 3, '10': 'userID'},
    const {'1': 'status', '3': 3, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `RegisterUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerUserResponseDescriptor = $convert.base64Decode('ChRSZWdpc3RlclVzZXJSZXNwb25zZRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SFgoGdXNlcklEGAIgASgDUgZ1c2VySUQSFgoGc3RhdHVzGAMgASgFUgZzdGF0dXM=');
@$core.Deprecated('Use userInfoRequestDescriptor instead')
const UserInfoRequest$json = const {
  '1': 'UserInfoRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'userID', '3': 2, '4': 1, '5': 3, '10': 'userID'},
  ],
};

/// Descriptor for `UserInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoRequestDescriptor = $convert.base64Decode('Cg9Vc2VySW5mb1JlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2VuEhYKBnVzZXJJRBgCIAEoA1IGdXNlcklE');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'location', '3': 2, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'profilePicture', '3': 3, '4': 1, '5': 9, '10': 'profilePicture'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'userID', '3': 5, '4': 1, '5': 3, '10': 'userID'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEhIKBG5hbWUYASABKAlSBG5hbWUSGgoIbG9jYXRpb24YAiABKAlSCGxvY2F0aW9uEiYKDnByb2ZpbGVQaWN0dXJlGAMgASgJUg5wcm9maWxlUGljdHVyZRIUCgVlbWFpbBgEIAEoCVIFZW1haWwSFgoGdXNlcklEGAUgASgDUgZ1c2VySUQ=');
@$core.Deprecated('Use actionDescriptor instead')
const Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'param', '3': 2, '4': 1, '5': 9, '10': 'param'},
  ],
};

/// Descriptor for `Action`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actionDescriptor = $convert.base64Decode('CgZBY3Rpb24SEgoEdHlwZRgBIAEoBVIEdHlwZRIUCgVwYXJhbRgCIAEoCVIFcGFyYW0=');
@$core.Deprecated('Use editProfilePictureRequestDescriptor instead')
const EditProfilePictureRequest$json = const {
  '1': 'EditProfilePictureRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'image', '3': 2, '4': 1, '5': 12, '10': 'image'},
  ],
};

/// Descriptor for `EditProfilePictureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editProfilePictureRequestDescriptor = $convert.base64Decode('ChlFZGl0UHJvZmlsZVBpY3R1cmVSZXF1ZXN0EhQKBXRva2VuGAEgASgJUgV0b2tlbhIUCgVpbWFnZRgCIAEoDFIFaW1hZ2U=');
@$core.Deprecated('Use editProfileInfoRequestDescriptor instead')
const EditProfileInfoRequest$json = const {
  '1': 'EditProfileInfoRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'email', '17': true},
    const {'1': 'password', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'password', '17': true},
    const {'1': 'location', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'location', '17': true},
  ],
  '8': const [
    const {'1': '_name'},
    const {'1': '_email'},
    const {'1': '_password'},
    const {'1': '_location'},
  ],
};

/// Descriptor for `EditProfileInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editProfileInfoRequestDescriptor = $convert.base64Decode('ChZFZGl0UHJvZmlsZUluZm9SZXF1ZXN0EhQKBXRva2VuGAEgASgJUgV0b2tlbhIXCgRuYW1lGAIgASgJSABSBG5hbWWIAQESGQoFZW1haWwYAyABKAlIAVIFZW1haWyIAQESHwoIcGFzc3dvcmQYBCABKAlIAlIIcGFzc3dvcmSIAQESHwoIbG9jYXRpb24YBSABKAlIA1IIbG9jYXRpb26IAQFCBwoFX25hbWVCCAoGX2VtYWlsQgsKCV9wYXNzd29yZEILCglfbG9jYXRpb24=');
@$core.Deprecated('Use communityDescriptor instead')
const Community$json = const {
  '1': 'Community',
  '2': const [
    const {'1': 'communityID', '3': 1, '4': 1, '5': 3, '10': 'communityID'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'location', '3': 3, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'numMembers', '3': 4, '4': 1, '5': 3, '10': 'numMembers'},
    const {'1': 'icon', '3': 5, '4': 1, '5': 9, '10': 'icon'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'isAdmin', '3': 7, '4': 1, '5': 8, '10': 'isAdmin'},
    const {'1': 'isMember', '3': 8, '4': 1, '5': 8, '10': 'isMember'},
  ],
};

/// Descriptor for `Community`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List communityDescriptor = $convert.base64Decode('CglDb21tdW5pdHkSIAoLY29tbXVuaXR5SUQYASABKANSC2NvbW11bml0eUlEEhIKBG5hbWUYAiABKAlSBG5hbWUSGgoIbG9jYXRpb24YAyABKAlSCGxvY2F0aW9uEh4KCm51bU1lbWJlcnMYBCABKANSCm51bU1lbWJlcnMSEgoEaWNvbhgFIAEoCVIEaWNvbhIgCgtkZXNjcmlwdGlvbhgGIAEoCVILZGVzY3JpcHRpb24SGAoHaXNBZG1pbhgHIAEoCFIHaXNBZG1pbhIaCghpc01lbWJlchgIIAEoCFIIaXNNZW1iZXI=');
@$core.Deprecated('Use createCommunityRequestDescriptor instead')
const CreateCommunityRequest$json = const {
  '1': 'CreateCommunityRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'location', '3': 2, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `CreateCommunityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCommunityRequestDescriptor = $convert.base64Decode('ChZDcmVhdGVDb21tdW5pdHlSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSGgoIbG9jYXRpb24YAiABKAlSCGxvY2F0aW9uEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIUCgV0b2tlbhgEIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use editCommunityRequestDescriptor instead')
const EditCommunityRequest$json = const {
  '1': 'EditCommunityRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'communityID', '3': 2, '4': 1, '5': 3, '10': 'communityID'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    const {'1': 'location', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'location', '17': true},
    const {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'description', '17': true},
  ],
  '8': const [
    const {'1': '_name'},
    const {'1': '_location'},
    const {'1': '_description'},
  ],
};

/// Descriptor for `EditCommunityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editCommunityRequestDescriptor = $convert.base64Decode('ChRFZGl0Q29tbXVuaXR5UmVxdWVzdBIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SIAoLY29tbXVuaXR5SUQYAiABKANSC2NvbW11bml0eUlEEhcKBG5hbWUYAyABKAlIAFIEbmFtZYgBARIfCghsb2NhdGlvbhgEIAEoCUgBUghsb2NhdGlvbogBARIlCgtkZXNjcmlwdGlvbhgFIAEoCUgCUgtkZXNjcmlwdGlvbogBAUIHCgVfbmFtZUILCglfbG9jYXRpb25CDgoMX2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use editCommunityIconRequestDescriptor instead')
const EditCommunityIconRequest$json = const {
  '1': 'EditCommunityIconRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'communityID', '3': 2, '4': 1, '5': 3, '10': 'communityID'},
    const {'1': 'icon', '3': 3, '4': 1, '5': 12, '10': 'icon'},
  ],
};

/// Descriptor for `EditCommunityIconRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editCommunityIconRequestDescriptor = $convert.base64Decode('ChhFZGl0Q29tbXVuaXR5SWNvblJlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2VuEiAKC2NvbW11bml0eUlEGAIgASgDUgtjb21tdW5pdHlJRBISCgRpY29uGAMgASgMUgRpY29u');
@$core.Deprecated('Use joinLeaveCommunityRequestDescriptor instead')
const JoinLeaveCommunityRequest$json = const {
  '1': 'JoinLeaveCommunityRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'communityID', '3': 2, '4': 1, '5': 3, '10': 'communityID'},
  ],
};

/// Descriptor for `JoinLeaveCommunityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinLeaveCommunityRequestDescriptor = $convert.base64Decode('ChlKb2luTGVhdmVDb21tdW5pdHlSZXF1ZXN0EhQKBXRva2VuGAEgASgJUgV0b2tlbhIgCgtjb21tdW5pdHlJRBgCIAEoA1ILY29tbXVuaXR5SUQ=');
@$core.Deprecated('Use searchCommunityRequestDescriptor instead')
const SearchCommunityRequest$json = const {
  '1': 'SearchCommunityRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    const {'1': 'location', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'location', '17': true},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
  '8': const [
    const {'1': '_name'},
    const {'1': '_location'},
  ],
};

/// Descriptor for `SearchCommunityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchCommunityRequestDescriptor = $convert.base64Decode('ChZTZWFyY2hDb21tdW5pdHlSZXF1ZXN0EhcKBG5hbWUYASABKAlIAFIEbmFtZYgBARIfCghsb2NhdGlvbhgCIAEoCUgBUghsb2NhdGlvbogBARIUCgV0b2tlbhgDIAEoCVIFdG9rZW5CBwoFX25hbWVCCwoJX2xvY2F0aW9u');
@$core.Deprecated('Use createEventRequestDescriptor instead')
const CreateEventRequest$json = const {
  '1': 'CreateEventRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'communityID', '3': 2, '4': 1, '5': 3, '10': 'communityID'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'time', '3': 4, '4': 1, '5': 3, '10': 'time'},
    const {'1': 'location', '3': 5, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'maxParticipants', '3': 7, '4': 1, '5': 3, '10': 'maxParticipants'},
  ],
};

/// Descriptor for `CreateEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEventRequestDescriptor = $convert.base64Decode('ChJDcmVhdGVFdmVudFJlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2VuEiAKC2NvbW11bml0eUlEGAIgASgDUgtjb21tdW5pdHlJRBIUCgV0aXRsZRgDIAEoCVIFdGl0bGUSEgoEdGltZRgEIAEoA1IEdGltZRIaCghsb2NhdGlvbhgFIAEoCVIIbG9jYXRpb24SIAoLZGVzY3JpcHRpb24YBiABKAlSC2Rlc2NyaXB0aW9uEigKD21heFBhcnRpY2lwYW50cxgHIAEoA1IPbWF4UGFydGljaXBhbnRz');
@$core.Deprecated('Use eventDescriptor instead')
const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'eventID', '3': 1, '4': 1, '5': 3, '10': 'eventID'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'time', '3': 3, '4': 1, '5': 3, '10': 'time'},
    const {'1': 'publishedTime', '3': 4, '4': 1, '5': 3, '10': 'publishedTime'},
    const {'1': 'location', '3': 5, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'participants', '3': 7, '4': 1, '5': 3, '10': 'participants'},
    const {'1': 'maxParticipants', '3': 8, '4': 1, '5': 3, '10': 'maxParticipants'},
    const {'1': 'creatorInfo', '3': 9, '4': 1, '5': 11, '6': '.User', '10': 'creatorInfo'},
    const {'1': 'joined', '3': 10, '4': 1, '5': 8, '10': 'joined'},
    const {'1': 'communityInfo', '3': 11, '4': 1, '5': 11, '6': '.Community', '10': 'communityInfo'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode('CgVFdmVudBIYCgdldmVudElEGAEgASgDUgdldmVudElEEhQKBXRpdGxlGAIgASgJUgV0aXRsZRISCgR0aW1lGAMgASgDUgR0aW1lEiQKDXB1Ymxpc2hlZFRpbWUYBCABKANSDXB1Ymxpc2hlZFRpbWUSGgoIbG9jYXRpb24YBSABKAlSCGxvY2F0aW9uEiAKC2Rlc2NyaXB0aW9uGAYgASgJUgtkZXNjcmlwdGlvbhIiCgxwYXJ0aWNpcGFudHMYByABKANSDHBhcnRpY2lwYW50cxIoCg9tYXhQYXJ0aWNpcGFudHMYCCABKANSD21heFBhcnRpY2lwYW50cxInCgtjcmVhdG9ySW5mbxgJIAEoCzIFLlVzZXJSC2NyZWF0b3JJbmZvEhYKBmpvaW5lZBgKIAEoCFIGam9pbmVkEjAKDWNvbW11bml0eUluZm8YCyABKAsyCi5Db21tdW5pdHlSDWNvbW11bml0eUluZm8=');
@$core.Deprecated('Use interactWithEventRequestDescriptor instead')
const InteractWithEventRequest$json = const {
  '1': 'InteractWithEventRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'action', '3': 2, '4': 1, '5': 5, '10': 'action'},
    const {'1': 'eventID', '3': 3, '4': 1, '5': 3, '10': 'eventID'},
  ],
};

/// Descriptor for `InteractWithEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List interactWithEventRequestDescriptor = $convert.base64Decode('ChhJbnRlcmFjdFdpdGhFdmVudFJlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2VuEhYKBmFjdGlvbhgCIAEoBVIGYWN0aW9uEhgKB2V2ZW50SUQYAyABKANSB2V2ZW50SUQ=');
@$core.Deprecated('Use deleteEventRequestDescriptor instead')
const DeleteEventRequest$json = const {
  '1': 'DeleteEventRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'eventID', '3': 2, '4': 1, '5': 3, '10': 'eventID'},
  ],
};

/// Descriptor for `DeleteEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEventRequestDescriptor = $convert.base64Decode('ChJEZWxldGVFdmVudFJlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2VuEhgKB2V2ZW50SUQYAiABKANSB2V2ZW50SUQ=');
@$core.Deprecated('Use getEventParticipantsRequestDescriptor instead')
const GetEventParticipantsRequest$json = const {
  '1': 'GetEventParticipantsRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'eventID', '3': 2, '4': 1, '5': 3, '10': 'eventID'},
  ],
};

/// Descriptor for `GetEventParticipantsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEventParticipantsRequestDescriptor = $convert.base64Decode('ChtHZXRFdmVudFBhcnRpY2lwYW50c1JlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2VuEhgKB2V2ZW50SUQYAiABKANSB2V2ZW50SUQ=');
@$core.Deprecated('Use getCommunityEventsRequestDescriptor instead')
const GetCommunityEventsRequest$json = const {
  '1': 'GetCommunityEventsRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'communityID', '3': 2, '4': 1, '5': 3, '10': 'communityID'},
  ],
};

/// Descriptor for `GetCommunityEventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCommunityEventsRequestDescriptor = $convert.base64Decode('ChlHZXRDb21tdW5pdHlFdmVudHNSZXF1ZXN0EhQKBXRva2VuGAEgASgJUgV0b2tlbhIgCgtjb21tdW5pdHlJRBgCIAEoA1ILY29tbXVuaXR5SUQ=');
@$core.Deprecated('Use stringMessageDescriptor instead')
const StringMessage$json = const {
  '1': 'StringMessage',
  '2': const [
    const {'1': 'val', '3': 1, '4': 1, '5': 9, '10': 'val'},
  ],
};

/// Descriptor for `StringMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringMessageDescriptor = $convert.base64Decode('Cg1TdHJpbmdNZXNzYWdlEhAKA3ZhbBgBIAEoCVIDdmFs');
@$core.Deprecated('Use int64MessageDescriptor instead')
const Int64Message$json = const {
  '1': 'Int64Message',
  '2': const [
    const {'1': 'val', '3': 1, '4': 1, '5': 3, '10': 'val'},
  ],
};

/// Descriptor for `Int64Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int64MessageDescriptor = $convert.base64Decode('CgxJbnQ2NE1lc3NhZ2USEAoDdmFsGAEgASgDUgN2YWw=');
