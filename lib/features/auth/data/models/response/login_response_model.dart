// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) =>
    json.encode(data.toJson());

class LoginResponseModel {
  bool? error;
  String? message;
  LoginResult? loginResult;

  LoginResponseModel({
    this.error,
    this.message,
    this.loginResult,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        error: json["error"],
        message: json["message"],
        loginResult: json["loginResult"] == null
            ? null
            : LoginResult.fromJson(json["loginResult"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "loginResult": loginResult?.toJson(),
      };
}

class LoginResult {
  String? userId;
  String? name;
  String? token;

  LoginResult({
    this.userId,
    this.name,
    this.token,
  });

  factory LoginResult.fromJson(Map<String, dynamic> json) => LoginResult(
        userId: json["userId"],
        name: json["name"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "token": token,
      };
}
