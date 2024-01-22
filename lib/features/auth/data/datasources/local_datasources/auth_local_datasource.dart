import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../models/response/login_response_model.dart';

class AuthLocalDatasource {
  Future<bool> saveAuthData(LoginResponseModel model) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final res = await pref.setString('auth', jsonEncode(model.toJson()));
    return res;
  }

  Future<String> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    final authData = LoginResult.fromJson(jsonDecode(authJson));
    return authData.token ?? '';
  }

  Future<bool> isLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    return authJson.isNotEmpty;
  }

  Future<bool> removeAuthData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove('auth');
  }
}
