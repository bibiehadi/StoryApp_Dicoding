// To parse this JSON data, do
//
//     final getStoriesResponseModel = getStoriesResponseModelFromJson(jsonString);

import 'dart:convert';

GetStoriesResponseModel getStoriesResponseModelFromJson(String str) =>
    GetStoriesResponseModel.fromJson(json.decode(str));

String getStoriesResponseModelToJson(GetStoriesResponseModel data) =>
    json.encode(data.toJson());

class GetStoriesResponseModel {
  bool? error;
  String? message;
  List<ListStory>? listStory;

  GetStoriesResponseModel({
    this.error,
    this.message,
    this.listStory,
  });

  factory GetStoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      GetStoriesResponseModel(
        error: json["error"],
        message: json["message"],
        listStory: json["listStory"] == null
            ? []
            : List<ListStory>.from(
                json["listStory"]!.map((x) => ListStory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "listStory": listStory == null
            ? []
            : List<dynamic>.from(listStory!.map((x) => x.toJson())),
      };
}

class ListStory {
  String? id;
  String? name;
  String? description;
  String? photoUrl;
  DateTime? createdAt;
  double? lat;
  double? lon;

  ListStory({
    this.id,
    this.name,
    this.description,
    this.photoUrl,
    this.createdAt,
    this.lat,
    this.lon,
  });

  factory ListStory.fromJson(Map<String, dynamic> json) => ListStory(
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
