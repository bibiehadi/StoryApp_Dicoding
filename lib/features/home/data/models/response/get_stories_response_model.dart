// To parse this JSON data, do
//
//     final getStoriesResponseModel = getStoriesResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_stories_response_model.freezed.dart';
part 'get_stories_response_model.g.dart';

GetStoriesResponseModel getStoriesResponseModelFromJson(String str) =>
    GetStoriesResponseModel.fromJson(json.decode(str));

String getStoriesResponseModelToJson(GetStoriesResponseModel data) =>
    json.encode(data.toJson());

@freezed
class GetStoriesResponseModel with _$GetStoriesResponseModel {
  const factory GetStoriesResponseModel({
    bool? error,
    String? message,
    List<ListStory>? listStory,
  }) = _GetStoriesResponseModel;

  factory GetStoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetStoriesResponseModelFromJson(json);
}

@freezed
class ListStory with _$ListStory {
  const factory ListStory({
    String? id,
    String? name,
    String? description,
    String? photoUrl,
    DateTime? createdAt,
    dynamic lat,
    dynamic lon,
  }) = _ListStory;

  factory ListStory.fromJson(Map<String, dynamic> json) =>
      _$ListStoryFromJson(json);
}
