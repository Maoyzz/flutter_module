// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return LoginModel(
      json['SessionKey'] as String,
      json['UserID'] as String,
      json['LoginState'] as String,
      json['PhoneState'] as String,
      json['Phone'] as String,
      json['SessionID'] as String,
      json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
      json['guid'] as String);
}

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'SessionKey': instance.sessionKey,
      'UserID': instance.userID,
      'LoginState': instance.loginState,
      'PhoneState': instance.phoneState,
      'Phone': instance.phone,
      'SessionID': instance.sessionID,
      'error': instance.error,
      'guid': instance.guid
    };

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return Error(json['ErrorCode'] as int, json['ErrorMsg'] as String);
}

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'ErrorCode': instance.errorCode,
      'ErrorMsg': instance.errorMsg
    };
