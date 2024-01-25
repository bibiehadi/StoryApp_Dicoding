// To parse this JSON data, do
//
//     final getDetailStoryResponseModel = getDetailStoryResponseModelFromJson(jsonString);

import 'dart:convert';

GetDetailStoryResponseModel getDetailStoryResponseModelFromJson(String str) =>
    GetDetailStoryResponseModel.fromJson(json.decode(str));

String getDetailStoryResponseModelToJson(GetDetailStoryResponseModel data) =>
    json.encode(data.toJson());

class GetDetailStoryResponseModel {
  bool? error;
  String? message;
  Story? story;

  GetDetailStoryResponseModel({
    this.error,
    this.message,
    this.story,
  });

  factory GetDetailStoryResponseModel.fromJson(Map<String, dynamic> json) =>
      GetDetailStoryResponseModel(
        error: json["error"],
        message: json["message"],
        story: json["story"] == null ? null : Story.fromJson(json["story"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "story": story?.toJson(),
      };
}

class Story {
  String? id;
  String? name;
  String? description;
  String? photoUrl;
  DateTime? createdAt;
  double? lat;
  double? lon;

  Story({
    this.id,
    this.name,
    this.description,
    this.photoUrl,
    this.createdAt,
    this.lat,
    this.lon,
  });

  factory Story.fromJson(Map<String, dynamic> json) => Story(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        photoUrl: json["photoUrl"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "photoUrl": photoUrl,
        "createdAt": createdAt?.toIso8601String(),
        "lat": lat,
        "lon": lon,
      };
}
