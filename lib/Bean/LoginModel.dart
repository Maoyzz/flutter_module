import 'package:json_annotation/json_annotation.dart';

part 'loginmodel.g.dart';


@JsonSerializable()
class LoginModel extends Object {

  @JsonKey(name: 'SessionKey')
  String sessionKey;

  @JsonKey(name: 'UserID')
  String userID;

  @JsonKey(name: 'LoginState')
  String loginState;

  @JsonKey(name: 'PhoneState')
  String phoneState;

  @JsonKey(name: 'Phone')
  String phone;

  @JsonKey(name: 'SessionID')
  String sessionID;

  @JsonKey(name: 'error')
  Error error;

  @JsonKey(name: 'guid')
  String guid;

  LoginModel(this.sessionKey,this.userID,this.loginState,this.phoneState,this.phone,this.sessionID,this.error,this.guid,);

  factory LoginModel.fromJson(Map<String, dynamic> srcJson) => _$LoginModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

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

  
