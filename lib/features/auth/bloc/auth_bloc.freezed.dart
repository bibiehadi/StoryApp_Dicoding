// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  Object get requestModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel requestModel) login,
    required TResult Function(RegisterRequestModel requestModel) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel requestModel)? login,
    TResult? Function(RegisterRequestModel requestModel)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel requestModel)? login,
    TResult Function(RegisterRequestModel requestModel)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequestModel requestModel});

  $LoginRequestModelCopyWith<$Res> get requestModel;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestModel = null,
  }) {
    return _then(_$LoginImpl(
      null == requestModel
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as LoginRequestModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginRequestModelCopyWith<$Res> get requestModel {
    return $LoginRequestModelCopyWith<$Res>(_value.requestModel, (value) {
      return _then(_value.copyWith(requestModel: value));
    });
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.requestModel);

  @override
  final LoginRequestModel requestModel;

  @override
  String toString() {
    return 'AuthEvent.login(requestModel: $requestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.requestModel, requestModel) ||
                other.requestModel == requestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel requestModel) login,
    required TResult Function(RegisterRequestModel requestModel) register,
  }) {
    return login(requestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel requestModel)? login,
    TResult? Function(RegisterRequestModel requestModel)? register,
  }) {
    return login?.call(requestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel requestModel)? login,
    TResult Function(RegisterRequestModel requestModel)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(requestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final LoginRequestModel requestModel) = _$LoginImpl;

  @override
  LoginRequestModel get requestModel;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterRequestModel requestModel});

  $RegisterRequestModelCopyWith<$Res> get requestModel;
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestModel = null,
  }) {
    return _then(_$RegisterImpl(
      null == requestModel
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as RegisterRequestModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterRequestModelCopyWith<$Res> get requestModel {
    return $RegisterRequestModelCopyWith<$Res>(_value.requestModel, (value) {
      return _then(_value.copyWith(requestModel: value));
    });
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(this.requestModel);

  @override
  final RegisterRequestModel requestModel;

  @override
  String toString() {
    return 'AuthEvent.register(requestModel: $requestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.requestModel, requestModel) ||
                other.requestModel == requestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel requestModel) login,
    required TResult Function(RegisterRequestModel requestModel) register,
  }) {
    return register(requestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel requestModel)? login,
    TResult? Function(RegisterRequestModel requestModel)? register,
  }) {
    return register?.call(requestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel requestModel)? login,
    TResult Function(RegisterRequestModel requestModel)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(requestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(final RegisterRequestModel requestModel) =
      _$RegisterImpl;

  @override
  RegisterRequestModel get requestModel;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loginLoading,
    required TResult Function(String message) loginFailed,
    required TResult Function(LoginResponseModel responseModel) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(String message) registerFailed,
    required TResult Function(RegisterResponseModel responseModel)
        registerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loginLoading,
    TResult? Function(String message)? loginFailed,
    TResult? Function(LoginResponseModel responseModel)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(String message)? registerFailed,
    TResult? Function(RegisterResponseModel responseModel)? registerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loginLoading,
    TResult Function(String message)? loginFailed,
    TResult Function(LoginResponseModel responseModel)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(String message)? registerFailed,
    TResult Function(RegisterResponseModel responseModel)? registerSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? intial,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.intial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loginLoading,
    required TResult Function(String message) loginFailed,
    required TResult Function(LoginResponseModel responseModel) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(String message) registerFailed,
    required TResult Function(RegisterResponseModel responseModel)
        registerSuccess,
  }) {
    return intial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loginLoading,
    TResult? Function(String message)? loginFailed,
    TResult? Function(LoginResponseModel responseModel)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(String message)? registerFailed,
    TResult? Function(RegisterResponseModel responseModel)? registerSuccess,
  }) {
    return intial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loginLoading,
    TResult Function(String message)? loginFailed,
    TResult Function(LoginResponseModel responseModel)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(String message)? registerFailed,
    TResult Function(RegisterResponseModel responseModel)? registerSuccess,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? intial,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingImpl implements _LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loginLoading,
    required TResult Function(String message) loginFailed,
    required TResult Function(LoginResponseModel responseModel) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(String message) registerFailed,
    required TResult Function(RegisterResponseModel responseModel)
        registerSuccess,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loginLoading,
    TResult? Function(String message)? loginFailed,
    TResult? Function(LoginResponseModel responseModel)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(String message)? registerFailed,
    TResult? Function(RegisterResponseModel responseModel)? registerSuccess,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loginLoading,
    TResult Function(String message)? loginFailed,
    TResult Function(LoginResponseModel responseModel)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(String message)? registerFailed,
    TResult Function(RegisterResponseModel responseModel)? registerSuccess,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? intial,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class _LoginLoading implements AuthState {
  const factory _LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoginFailedImplCopyWith<$Res> {
  factory _$$LoginFailedImplCopyWith(
          _$LoginFailedImpl value, $Res Function(_$LoginFailedImpl) then) =
      __$$LoginFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginFailedImpl>
    implements _$$LoginFailedImplCopyWith<$Res> {
  __$$LoginFailedImplCopyWithImpl(
      _$LoginFailedImpl _value, $Res Function(_$LoginFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailedImpl implements _LoginFailed {
  const _$LoginFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.loginFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailedImplCopyWith<_$LoginFailedImpl> get copyWith =>
      __$$LoginFailedImplCopyWithImpl<_$LoginFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loginLoading,
    required TResult Function(String message) loginFailed,
    required TResult Function(LoginResponseModel responseModel) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(String message) registerFailed,
    required TResult Function(RegisterResponseModel responseModel)
        registerSuccess,
  }) {
    return loginFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loginLoading,
    TResult? Function(String message)? loginFailed,
    TResult? Function(LoginResponseModel responseModel)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(String message)? registerFailed,
    TResult? Function(RegisterResponseModel responseModel)? registerSuccess,
  }) {
    return loginFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loginLoading,
    TResult Function(String message)? loginFailed,
    TResult Function(LoginResponseModel responseModel)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(String message)? registerFailed,
    TResult Function(RegisterResponseModel responseModel)? registerSuccess,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? intial,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class _LoginFailed implements AuthState {
  const factory _LoginFailed(final String message) = _$LoginFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginFailedImplCopyWith<_$LoginFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponseModel responseModel});

  $LoginResponseModelCopyWith<$Res> get responseModel;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseModel = null,
  }) {
    return _then(_$LoginSuccessImpl(
      null == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<$Res> get responseModel {
    return $LoginResponseModelCopyWith<$Res>(_value.responseModel, (value) {
      return _then(_value.copyWith(responseModel: value));
    });
  }
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl(this.responseModel);

  @override
  final LoginResponseModel responseModel;

  @override
  String toString() {
    return 'AuthState.loginSuccess(responseModel: $responseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loginLoading,
    required TResult Function(String message) loginFailed,
    required TResult Function(LoginResponseModel responseModel) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(String message) registerFailed,
    required TResult Function(RegisterResponseModel responseModel)
        registerSuccess,
  }) {
    return loginSuccess(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loginLoading,
    TResult? Function(String message)? loginFailed,
    TResult? Function(LoginResponseModel responseModel)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(String message)? registerFailed,
    TResult? Function(RegisterResponseModel responseModel)? registerSuccess,
  }) {
    return loginSuccess?.call(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loginLoading,
    TResult Function(String message)? loginFailed,
    TResult Function(LoginResponseModel responseModel)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(String message)? registerFailed,
    TResult Function(RegisterResponseModel responseModel)? registerSuccess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(responseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? intial,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthState {
  const factory _LoginSuccess(final LoginResponseModel responseModel) =
      _$LoginSuccessImpl;

  LoginResponseModel get responseModel;
  @JsonKey(ignore: true)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterLoadingImplCopyWith<$Res> {
  factory _$$RegisterLoadingImplCopyWith(_$RegisterLoadingImpl value,
          $Res Function(_$RegisterLoadingImpl) then) =
      __$$RegisterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterLoadingImpl>
    implements _$$RegisterLoadingImplCopyWith<$Res> {
  __$$RegisterLoadingImplCopyWithImpl(
      _$RegisterLoadingImpl _value, $Res Function(_$RegisterLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterLoadingImpl implements _RegisterLoading {
  const _$RegisterLoadingImpl();

  @override
  String toString() {
    return 'AuthState.registerLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loginLoading,
    required TResult Function(String message) loginFailed,
    required TResult Function(LoginResponseModel responseModel) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(String message) registerFailed,
    required TResult Function(RegisterResponseModel responseModel)
        registerSuccess,
  }) {
    return registerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loginLoading,
    TResult? Function(String message)? loginFailed,
    TResult? Function(LoginResponseModel responseModel)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(String message)? registerFailed,
    TResult? Function(RegisterResponseModel responseModel)? registerSuccess,
  }) {
    return registerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loginLoading,
    TResult Function(String message)? loginFailed,
    TResult Function(LoginResponseModel responseModel)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(String message)? registerFailed,
    TResult Function(RegisterResponseModel responseModel)? registerSuccess,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) {
    return registerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? intial,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) {
    return registerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoading implements AuthState {
  const factory _RegisterLoading() = _$RegisterLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterFailedImplCopyWith<$Res> {
  factory _$$RegisterFailedImplCopyWith(_$RegisterFailedImpl value,
          $Res Function(_$RegisterFailedImpl) then) =
      __$$RegisterFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegisterFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterFailedImpl>
    implements _$$RegisterFailedImplCopyWith<$Res> {
  __$$RegisterFailedImplCopyWithImpl(
      _$RegisterFailedImpl _value, $Res Function(_$RegisterFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegisterFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterFailedImpl implements _RegisterFailed {
  const _$RegisterFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.registerFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFailedImplCopyWith<_$RegisterFailedImpl> get copyWith =>
      __$$RegisterFailedImplCopyWithImpl<_$RegisterFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loginLoading,
    required TResult Function(String message) loginFailed,
    required TResult Function(LoginResponseModel responseModel) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(String message) registerFailed,
    required TResult Function(RegisterResponseModel responseModel)
        registerSuccess,
  }) {
    return registerFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loginLoading,
    TResult? Function(String message)? loginFailed,
    TResult? Function(LoginResponseModel responseModel)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(String message)? registerFailed,
    TResult? Function(RegisterResponseModel responseModel)? registerSuccess,
  }) {
    return registerFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loginLoading,
    TResult Function(String message)? loginFailed,
    TResult Function(LoginResponseModel responseModel)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(String message)? registerFailed,
    TResult Function(RegisterResponseModel responseModel)? registerSuccess,
    required TResult orElse(),
  }) {
    if (registerFailed != null) {
      return registerFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) {
    return registerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? intial,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) {
    return registerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) {
    if (registerFailed != null) {
      return registerFailed(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailed implements AuthState {
  const factory _RegisterFailed(final String message) = _$RegisterFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RegisterFailedImplCopyWith<_$RegisterFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<$Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl value,
          $Res Function(_$RegisterSuccessImpl) then) =
      __$$RegisterSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterResponseModel responseModel});

  $RegisterResponseModelCopyWith<$Res> get responseModel;
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterSuccessImpl>
    implements _$$RegisterSuccessImplCopyWith<$Res> {
  __$$RegisterSuccessImplCopyWithImpl(
      _$RegisterSuccessImpl _value, $Res Function(_$RegisterSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseModel = null,
  }) {
    return _then(_$RegisterSuccessImpl(
      null == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as RegisterResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterResponseModelCopyWith<$Res> get responseModel {
    return $RegisterResponseModelCopyWith<$Res>(_value.responseModel, (value) {
      return _then(_value.copyWith(responseModel: value));
    });
  }
}

/// @nodoc

class _$RegisterSuccessImpl implements _RegisterSuccess {
  const _$RegisterSuccessImpl(this.responseModel);

  @override
  final RegisterResponseModel responseModel;

  @override
  String toString() {
    return 'AuthState.registerSuccess(responseModel: $responseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessImpl &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      __$$RegisterSuccessImplCopyWithImpl<_$RegisterSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function() loginLoading,
    required TResult Function(String message) loginFailed,
    required TResult Function(LoginResponseModel responseModel) loginSuccess,
    required TResult Function() registerLoading,
    required TResult Function(String message) registerFailed,
    required TResult Function(RegisterResponseModel responseModel)
        registerSuccess,
  }) {
    return registerSuccess(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intial,
    TResult? Function()? loginLoading,
    TResult? Function(String message)? loginFailed,
    TResult? Function(LoginResponseModel responseModel)? loginSuccess,
    TResult? Function()? registerLoading,
    TResult? Function(String message)? registerFailed,
    TResult? Function(RegisterResponseModel responseModel)? registerSuccess,
  }) {
    return registerSuccess?.call(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function()? loginLoading,
    TResult Function(String message)? loginFailed,
    TResult Function(LoginResponseModel responseModel)? loginSuccess,
    TResult Function()? registerLoading,
    TResult Function(String message)? registerFailed,
    TResult Function(RegisterResponseModel responseModel)? registerSuccess,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(responseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) intial,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_RegisterLoading value) registerLoading,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_RegisterSuccess value) registerSuccess,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? intial,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_RegisterLoading value)? registerLoading,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? intial,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_RegisterLoading value)? registerLoading,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccess implements AuthState {
  const factory _RegisterSuccess(final RegisterResponseModel responseModel) =
      _$RegisterSuccessImpl;

  RegisterResponseModel get responseModel;
  @JsonKey(ignore: true)
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
