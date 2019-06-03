import 'package:shared_preferences/shared_preferences.dart';


class ShareUtils{
  static void putString(String key,String value) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<String> getString(String key) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
  static void putInt(String key,int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  static Future<int> getInt(String key) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  static dynamic del(String key) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }
}


