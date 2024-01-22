import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:story_app/commons/config/utils/constanta.dart';

import '../../models/request/login_request_model.dart';
import '../../models/request/register_request_model.dart';
import '../../models/response/login_response_model.dart';
import '../../models/response/register_response_model.dart';
import '../local_datasources/auth_local_datasource.dart';

class AuthDatasource {
  Future<Either<String, RegisterResponseModel>> register(
      RegisterRequestModel requestModel) async {
    try {
      final url = Uri.parse("${Constanta.END_POINT}/register");
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(requestModel),
      );

      if (response.statusCode == 201) {
        return Right(
          registerResponseModelFromJson(response.body),
        );
      }

      return Left(
        registerResponseModelFromJson(response.body).message,
      );
    } catch (e) {
      return Left('Error : $e');
    }
  }

  Future<Either<String, LoginResponseModel>> login(
      LoginRequestModel requestModel) async {
    final pref = AuthLocalDatasource();

    try {
      final url = Uri.parse('${Constanta.END_POINT}/login');
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(requestModel),
      );

      if (response.statusCode == 200) {
        await pref.saveAuthData(
            LoginResponseModel.fromJson(jsonDecode(response.body)));
        return Right(loginResponseModelFromJson(response.body));
      }

      return Left(
          'Failed ${loginResponseModelFromJson(response.body).message}');
    } catch (e) {
      return Left('Error : $e');
    }
  }
}
