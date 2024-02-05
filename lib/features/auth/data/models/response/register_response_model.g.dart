// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterResponseModelImpl _$$RegisterResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterResponseModelImpl(
      error: json['error'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$RegisterResponseModelImplToJson(
        _$RegisterResponseModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
    };
