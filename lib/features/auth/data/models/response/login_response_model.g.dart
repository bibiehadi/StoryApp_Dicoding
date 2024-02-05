// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      error: json['error'] as bool?,
      message: json['message'] as String?,
      loginResult: json['loginResult'] == null
          ? null
          : LoginResult.fromJson(json['loginResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'loginResult': instance.loginResult,
    };

_$LoginResultImpl _$$LoginResultImplFromJson(Map<String, dynamic> json) =>
    _$LoginResultImpl(
      userId: json['userId'] as String?,
      name: json['name'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$LoginResultImplToJson(_$LoginResultImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'token': instance.token,
    };
