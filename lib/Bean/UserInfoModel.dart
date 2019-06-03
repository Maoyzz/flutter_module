import 'package:json_annotation/json_annotation.dart';

part 'UserInfomodel.g.dart';


@JsonSerializable()
class UserInfoModel extends Object {

  @JsonKey(name: 'driverRoadTransportPermit')
  int driverRoadTransportPermit;

  @JsonKey(name: 'orgRoadTransportPermitState')
  int orgRoadTransportPermitState;

  @JsonKey(name: 'isCredit')
  int isCredit;

  @JsonKey(name: 'isTruckApproved')
  int isTruckApproved;

  @JsonKey(name: 'userInfo')
  UserInfo userInfo;

  @JsonKey(name: 'error')
  Error error;

  @JsonKey(name: 'guid')
  String guid;

  UserInfoModel(this.driverRoadTransportPermit,this.orgRoadTransportPermitState,this.isCredit,this.isTruckApproved,this.userInfo,this.error,this.guid,);

  factory UserInfoModel.fromJson(Map<String, dynamic> srcJson) => _$UserInfoModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserInfoModelToJson(this);

}


@JsonSerializable()
class UserInfo extends Object {

  @JsonKey(name: 'UserID')
  String userID;

  @JsonKey(name: 'ORGID')
  String oRGID;

  @JsonKey(name: 'ORGRole')
  int oRGRole;

  @JsonKey(name: 'ORGName')
  String oRGName;

  @JsonKey(name: 'UserName')
  String userName;

  @JsonKey(name: 'LoginName')
  String loginName;

  @JsonKey(name: 'Phone')
  String phone;

  @JsonKey(name: 'ICCode')
  String iCCode;

  @JsonKey(name: 'IMGICURL1')
  String iMGICURL1;

  @JsonKey(name: 'IMGICURL2')
  String iMGICURL2;

  @JsonKey(name: 'ICState')
  int iCState;

  @JsonKey(name: 'State')
  int state;

  @JsonKey(name: 'PhoneState')
  int phoneState;

  @JsonKey(name: 'InputDate')
  String inputDate;

  @JsonKey(name: 'LoginTime')
  String loginTime;

  @JsonKey(name: 'LoginIP')
  String loginIP;

  @JsonKey(name: 'Disable')
  int disable;

  @JsonKey(name: 'OrgPhone')
  String orgPhone;

  @JsonKey(name: 'SetType')
  int setType;

  @JsonKey(name: 'OrgAuthenticationState')
  int orgAuthenticationState;

  @JsonKey(name: 'OrgAppState')
  int orgAppState;

  @JsonKey(name: 'OrgWebState')
  int orgWebState;

  @JsonKey(name: 'OrgAuthState')
  int orgAuthState;

  @JsonKey(name: 'IdCardFrontUrl')
  String idCardFrontUrl;

  @JsonKey(name: 'IdCardBackUrl')
  String idCardBackUrl;

  @JsonKey(name: 'IDCardExpiredDate')
  String iDCardExpiredDate;

  @JsonKey(name: 'BirthDate')
  String birthDate;

  @JsonKey(name: 'Gender')
  int gender;

  @JsonKey(name: 'Nationality')
  String nationality;

  @JsonKey(name: 'DriverLicenseUrl')
  String driverLicenseUrl;

  @JsonKey(name: 'DriverLicenseLevel')
  int driverLicenseLevel;

  @JsonKey(name: 'DriverLicenseCardNo')
  String driverLicenseCardNo;

  @JsonKey(name: 'DriverLicenseExpiredDate')
  String driverLicenseExpiredDate;

  @JsonKey(name: 'isVIP')
  int isVIP;

  UserInfo(this.userID,this.oRGID,this.oRGRole,this.oRGName,this.userName,this.loginName,this.phone,this.iCCode,this.iMGICURL1,this.iMGICURL2,this.iCState,this.state,this.phoneState,this.inputDate,this.loginTime,this.loginIP,this.disable,this.orgPhone,this.setType,this.orgAuthenticationState,this.orgAppState,this.orgWebState,this.orgAuthState,this.idCardFrontUrl,this.idCardBackUrl,this.iDCardExpiredDate,this.birthDate,this.gender,this.nationality,this.driverLicenseUrl,this.driverLicenseLevel,this.driverLicenseCardNo,this.driverLicenseExpiredDate,this.isVIP,);

  factory UserInfo.fromJson(Map<String, dynamic> srcJson) => _$UserInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);

}


@JsonSerializable()
class Error extends Object {

  @JsonKey(name: 'ErrorCode')
  int errorCode;

  @JsonKey(name: 'ErrorMsg')
  String errorMsg;

  Error(this.errorCode,this.errorMsg,);

  factory Error.fromJson(Map<String, dynamic> srcJson) => _$ErrorFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);

}


