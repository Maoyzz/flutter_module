import 'package:flutter_module/ShareUtils.dart';

/**
 * 存储系统变量
 */
class Qiyun {

  static String SessionKey = "";
  static String SessionId = "";
  static String LoginName = "";
  static String AppID = "";
  static void initSession(){
    ShareUtils.getString("SessionKey").then((String value){
      SessionKey = value;
    });
    ShareUtils.getString("SessionId").then((String value){
      SessionId = value;
    });
    ShareUtils.getString("LoginName").then((String value){
      LoginName = value;
    });
    ShareUtils.getString("AppID").then((String value){
      AppID = value;
    });
  }

}