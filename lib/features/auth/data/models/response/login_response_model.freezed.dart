// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseModel {
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  LoginResult? get loginResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res, LoginResponseModel>;
  @useResult
  $Res call({bool? error, String? message, LoginResult? loginResult});

  $LoginResultCopyWith<$Res>? get loginResult;
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res, $Val extends LoginResponseModel>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? loginResult = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      loginResult: freezed == loginResult
          ? _value.loginResult
          : loginResult // ignore: cast_nullable_to_non_nullable
              as LoginResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResultCopyWith<$Res>? get loginResult {
    if (_value.loginResult == null) {
      return null;
    }

    return $LoginResultCopyWith<$Res>(_value.loginResult!, (value) {
      return _then(_value.copyWith(loginResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseModelImplCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$$LoginResponseModelImplCopyWith(_$LoginResponseModelImpl value,
          $Res Function(_$LoginResponseModelImpl) then) =
      __$$LoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? error, String? message, LoginResult? loginResult});

  @override
  $LoginResultCopyWith<$Res>? get loginResult;
}

/// @nodoc
class __$$LoginResponseModelImplCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res, _$LoginResponseModelImpl>
    implements _$$LoginResponseModelImplCopyWith<$Res> {
  __$$LoginResponseModelImplCopyWithImpl(_$LoginResponseModelImpl _value,
      $Res Function(_$LoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? loginResult = freezed,
  }) {
    return _then(_$LoginResponseModelImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      loginResult: freezed == loginResult
          ? _value.loginResult
          : loginResult // ignore: cast_nullable_to_non_nullable
              as LoginResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseModelImpl implements _LoginResponseModel {
  const _$LoginResponseModelImpl({this.error, this.message, this.loginResult});

  factory _$LoginResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseModelImplFromJson(json);

  @override
  final bool? error;
  @override
  final String? message;
  @override
  final LoginResult? loginResult;

  @override
  String toString() {
    return 'LoginResponseModel(error: $error, message: $message, loginResult: $loginResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseModelImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.loginResult, loginResult) ||
                other.loginResult == loginResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, loginResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      __$$LoginResponseModelImplCopyWithImpl<_$LoginResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  const factory _LoginResponseModel(
      {final bool? error,
      final String? message,
      final LoginResult? loginResult}) = _$LoginResponseModelImpl;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginResponseModelImpl.fromJson;

  @override
  bool? get error;
  @override
  String? get message;
  @override
  LoginResult? get loginResult;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResult _$LoginResultFromJson(Map<String, dynamic> json) {
  return _LoginResult.fromJson(json);
}

/// @nodoc
mixin _$LoginResult {
  String? get userId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResultCopyWith<LoginResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
          LoginResult value, $Res Function(LoginResult) then) =
      _$LoginResultCopyWithImpl<$Res, LoginResult>;
  @useResult
  $Res call({String? userId, String? name, String? token});
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res, $Val extends LoginResult>
    implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? name = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResultImplCopyWith<$Res>
    implements $LoginResultCopyWith<$Res> {
  factory _$$LoginResultImplCopyWith(
          _$LoginResultImpl value, $Res Function(_$LoginResultImpl) then) =
      __$$LoginResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? name, String? token});
}

/// @nodoc
class __$$LoginResultImplCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$LoginResultImpl>
    implements _$$LoginResultImplCopyWith<$Res> {
  __$$LoginResultImplCopyWithImpl(
      _$LoginResultImpl _value, $Res Function(_$LoginResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? name = freezed,
    Object? token = freezed,
  }) {
    return _then(_$LoginResultImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResultImpl implements _LoginResult {
  const _$LoginResultImpl({this.userId, this.name, this.token});

  factory _$LoginResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResultImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? name;
  @override
  final String? token;

  @override
  String toString() {
    return 'LoginResult(userId: $userId, name: $name, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, name, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultImplCopyWith<_$LoginResultImpl> get copyWith =>
      __$$LoginResultImplCopyWithImpl<_$LoginResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResultImplToJson(
      this,
    );
  }
}

abstract class _LoginResult implements LoginResult {
  const factory _LoginResult(
      {final String? userId,
      final String? name,
      final String? token}) = _$LoginResultImpl;

  factory _LoginResult.fromJson(Map<String, dynamic> json) =
      _$LoginResultImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get name;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$LoginResultImplCopyWith<_$LoginResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
