// To parse this JSON data, do
//
//     final getDetailStoryResponseModel = getDetailStoryResponseModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_detail_story_response_model.freezed.dart';
part 'get_detail_story_response_model.g.dart';

GetDetailStoryResponseModel getDetailStoryResponseModelFromJson(String str) =>
    GetDetailStoryResponseModel.fromJson(json.decode(str));

String getDetailStoryResponseModelToJson(GetDetailStoryResponseModel data) =>
    json.encode(data.toJson());

@freezed
class GetDetailStoryResponseModel with _$GetDetailStoryResponseModel {
  const factory GetDetailStoryResponseModel({
    bool? error,
    String? message,
    Story? story,
  }) = _GetDetailStoryResponseModel;

  factory GetDetailStoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetDetailStoryResponseModelFromJson(json);
}

@freezed
class Story with _$Story {
  const factory Story({
    String? id,
    String? name,
    String? description,
    String? photoUrl,
    DateTime? createdAt,
    dynamic lat,
    dynamic lon,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
