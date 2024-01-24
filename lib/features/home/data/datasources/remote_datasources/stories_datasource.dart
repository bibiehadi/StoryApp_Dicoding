import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:story_app/commons/config/utils/constanta.dart';
import 'package:story_app/features/auth/data/datasources/local_datasources/auth_local_datasource.dart';
import 'package:story_app/features/home/data/models/response/get_stories_response_model.dart';

class StroiesDatasource {
  Future<Either<String, GetStoriesResponseModel>> getStroies() async {
    final token = await AuthLocalDatasource().getToken();
    print("TOKEN: $token");
    try {
      final url = Uri.parse("${Constanta.END_POINT}/stories");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(
          getStoriesResponseModelFromJson(response.body),
        );
      }

      return Left(
        getStoriesResponseModelFromJson(response.body).message!,
      );
    } catch (e) {
      return Left('Error : $e');
    }
  }
}