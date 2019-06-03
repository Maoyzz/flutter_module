// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) {
  return UserInfoModel(
      json['driverRoadTransportPermit'] as int,
      json['orgRoadTransportPermitState'] as int,
      json['isCredit'] as int,
      json['isTruckApproved'] as int,
      json['userInfo'] == null
          ? null
          : UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
      json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
      json['guid'] as String);
}

Map<String, dynamic> _$UserInfoModelToJson(UserInfoModel instance) =>
    <String, dynamic>{
      'driverRoadTransportPermit': instance.driverRoadTransportPermit,
      'orgRoadTransportPermitState': instance.orgRoadTransportPermitState,
      'isCredit': instance.isCredit,
      'isTruckApproved': instance.isTruckApproved,
      'userInfo': instance.userInfo,
      'error': instance.error,
      'guid': instance.guid
    };

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
      json['UserID'] as String,
      json['ORGID'] as String,
      json['ORGRole'] as int,
      json['ORGName'] as String,
      json['UserName'] as String,
      json['LoginName'] as String,
      json['Phone'] as String,
      json['ICCode'] as String,
      json['IMGICURL1'] as String,
      json['IMGICURL2'] as String,
      json['ICState'] as int,
      json['State'] as int,
      json['PhoneState'] as int,
      json['InputDate'] as String,
      json['LoginTime'] as String,
      json['LoginIP'] as String,
      json['Disable'] as int,
      json['OrgPhone'] as String,
      json['SetType'] as int,
      json['OrgAuthenticationState'] as int,
      json['OrgAppState'] as int,
      json['OrgWebState'] as int,
      json['OrgAuthState'] as int,
      json['IdCardFrontUrl'] as String,
      json['IdCardBackUrl'] as String,
      json['IDCardExpiredDate'] as String,
      json['BirthDate'] as String,
      json['Gender'] as int,
      json['Nationality'] as String,
      json['DriverLicenseUrl'] as String,
      json['DriverLicenseLevel'] as int,
      json['DriverLicenseCardNo'] as String,
      json['DriverLicenseExpiredDate'] as String,
      json['isVIP'] as int);
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'UserID': instance.userID,
      'ORGID': instance.oRGID,
      'ORGRole': instance.oRGRole,
      'ORGName': instance.oRGName,
      'UserName': instance.userName,
      'LoginName': instance.loginName,
      'Phone': instance.phone,
      'ICCode': instance.iCCode,
      'IMGICURL1': instance.iMGICURL1,
      'IMGICURL2': instance.iMGICURL2,
      'ICState': instance.iCState,
      'State': instance.state,
      'PhoneState': instance.phoneState,
      'InputDate': instance.inputDate,
      'LoginTime': instance.loginTime,
      'LoginIP': instance.loginIP,
      'Disable': instance.disable,
      'OrgPhone': instance.orgPhone,
      'SetType': instance.setType,
      'OrgAuthenticationState': instance.orgAuthenticationState,
      'OrgAppState': instance.orgAppState,
      'OrgWebState': instance.orgWebState,
      'OrgAuthState': instance.orgAuthState,
      'IdCardFrontUrl': instance.idCardFrontUrl,
      'IdCardBackUrl': instance.idCardBackUrl,
      'IDCardExpiredDate': instance.iDCardExpiredDate,
      'BirthDate': instance.birthDate,
      'Gender': instance.gender,
      'Nationality': instance.nationality,
      'DriverLicenseUrl': instance.driverLicenseUrl,
      'DriverLicenseLevel': instance.driverLicenseLevel,
      'DriverLicenseCardNo': instance.driverLicenseCardNo,
      'DriverLicenseExpiredDate': instance.driverLicenseExpiredDate,
      'isVIP': instance.isVIP
    };

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return Error(json['ErrorCode'] as int, json['ErrorMsg'] as String);
}

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'ErrorCode': instance.errorCode,
      'ErrorMsg': instance.errorMsg
    };
