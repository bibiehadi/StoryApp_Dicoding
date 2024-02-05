// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_detail_story_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDetailStoryResponseModelImpl _$$GetDetailStoryResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDetailStoryResponseModelImpl(
      error: json['error'] as bool?,
      message: json['message'] as String?,
      story: json['story'] == null
          ? null
          : Story.fromJson(json['story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetDetailStoryResponseModelImplToJson(
        _$GetDetailStoryResponseModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'story': instance.story,
    };

_$StoryImpl _$$StoryImplFromJson(Map<String, dynamic> json) => _$StoryImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      photoUrl: json['photoUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      lat: json['lat'],
      lon: json['lon'],
    );

Map<String, dynamic> _$$StoryImplToJson(_$StoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'lat': instance.lat,
      'lon': instance.lon,
    };
