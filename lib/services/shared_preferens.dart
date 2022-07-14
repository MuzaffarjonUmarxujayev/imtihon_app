import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';

class GetLogIn{

  static storeUser(User user) async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    preference.setString('user', stringUser);
  }


  static Future<User?> loadUser() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? stringUser = preferences.getString('user');
    if(stringUser == null || stringUser.isEmpty){
      return null;
    }
    Map map = jsonDecode(stringUser);
    return User.fromJon(map);
  }

  static Future<bool> removeUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.remove('user');
  }

}


