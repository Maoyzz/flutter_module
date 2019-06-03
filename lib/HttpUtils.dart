import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_module/Bean/LoginModel.dart';
import 'package:flutter_module/Bean/UserInfoModel.dart';
import 'package:flutter_module/Const.dart';
import 'package:flutter_module/Qiyun.dart';
import 'package:flutter_module/ShareUtils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpRequest{

  static void getHttp() async {
    Dio dio = getDio();
    try {
      Response response = await dio.get(Functions.test);
      print(response.toString());
    } catch (e) {
      print(e);
    }
  }

  static Future<UserInfoModel> getUserInfo() async{
    Response response = await getDio().get(Functions.getUserInfo);
    try{
      Map userMap = json.decode(response.toString());
      var model = UserInfoModel.fromJson(userMap);
      return model;
    }catch(e){

    }
  }
}


//返回Dio
Dio getDio(){
  Dio dio = Dio();
  dio.options.baseUrl = Const.baseUrl;
  dio.interceptors.add(LogInterceptor(responseBody: false));
  dio.interceptors.add(InterceptorsWrapper(
      onRequest:(RequestOptions options){
        options.queryParameters["SessionKey"] = Qiyun.SessionKey;
        options.headers["sessionID"] = Qiyun.SessionId;
        options.headers["Origin"] = "Flutter";
        return options; //continue
      },
      onResponse:(Response response) {
        print(response.toString());
        print(response.request.data.toString());
        return response; // continue
      },
      onError: (DioError e) async{
        if (e.response?.statusCode == 401) {
          RequestOptions options = e.response.request;
          Response response = await getDio().post("ORG/V2_2/PostAppDriverLogin"
              ,data: {"AppID": Qiyun.AppID, "LoginName": Qiyun.LoginName,"Type":"0"});
          try {
            Map userMap = json.decode(response.toString());
            var model = LoginModel.fromJson(userMap);
            options.queryParameters["SessionKey"] = model.sessionKey;
            options.headers["sessionID"] = model.sessionID;
            Qiyun.SessionKey = model.sessionKey;
            Qiyun.SessionId = model.sessionID;
            ShareUtils.putString("SessionKey", model.sessionKey);
            ShareUtils.putString("sessionID", model.sessionID);
            return dio.request(options.path, options: options);
          } catch (e) {
            print(e);
          }
        }
        return e; //continue
      }));
  return dio;
}
