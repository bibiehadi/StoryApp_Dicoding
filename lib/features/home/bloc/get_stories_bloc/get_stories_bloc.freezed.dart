// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_stories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetStoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStoriesEventCopyWith<$Res> {
  factory $GetStoriesEventCopyWith(
          GetStoriesEvent value, $Res Function(GetStoriesEvent) then) =
      _$GetStoriesEventCopyWithImpl<$Res, GetStoriesEvent>;
}

/// @nodoc
class _$GetStoriesEventCopyWithImpl<$Res, $Val extends GetStoriesEvent>
    implements $GetStoriesEventCopyWith<$Res> {
  _$GetStoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GetStoriesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GetStoriesEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() add,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? add,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? add,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GetStoriesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$GetStoriesEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl();

  @override
  String toString() {
    return 'GetStoriesEvent.add()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() add,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? add,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements GetStoriesEvent {
  const factory _Add() = _$AddImpl;
}

/// @nodoc
mixin _$GetStoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(GetStoriesResponseModel responseModel) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(GetStoriesResponseModel responseModel)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(GetStoriesResponseModel responseModel)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoriesLoading value) loading,
    required TResult Function(_GetStoriesFailed value) failed,
    required TResult Function(_GetStoriesSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoriesLoading value)? loading,
    TResult? Function(_GetStoriesFailed value)? failed,
    TResult? Function(_GetStoriesSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoriesLoading value)? loading,
    TResult Function(_GetStoriesFailed value)? failed,
    TResult Function(_GetStoriesSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStoriesStateCopyWith<$Res> {
  factory $GetStoriesStateCopyWith(
          GetStoriesState value, $Res Function(GetStoriesState) then) =
      _$GetStoriesStateCopyWithImpl<$Res, GetStoriesState>;
}

/// @nodoc
class _$GetStoriesStateCopyWithImpl<$Res, $Val extends GetStoriesState>
    implements $GetStoriesStateCopyWith<$Res> {
  _$GetStoriesStateCopyWithImpl(this._value, this._then);

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
    extends _$GetStoriesStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'GetStoriesState.initial()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(GetStoriesResponseModel responseModel) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(GetStoriesResponseModel responseModel)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(GetStoriesResponseModel responseModel)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoriesLoading value) loading,
    required TResult Function(_GetStoriesFailed value) failed,
    required TResult Function(_GetStoriesSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoriesLoading value)? loading,
    TResult? Function(_GetStoriesFailed value)? failed,
    TResult? Function(_GetStoriesSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoriesLoading value)? loading,
    TResult Function(_GetStoriesFailed value)? failed,
    TResult Function(_GetStoriesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetStoriesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetStoriesLoadingImplCopyWith<$Res> {
  factory _$$GetStoriesLoadingImplCopyWith(_$GetStoriesLoadingImpl value,
          $Res Function(_$GetStoriesLoadingImpl) then) =
      __$$GetStoriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStoriesLoadingImplCopyWithImpl<$Res>
    extends _$GetStoriesStateCopyWithImpl<$Res, _$GetStoriesLoadingImpl>
    implements _$$GetStoriesLoadingImplCopyWith<$Res> {
  __$$GetStoriesLoadingImplCopyWithImpl(_$GetStoriesLoadingImpl _value,
      $Res Function(_$GetStoriesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStoriesLoadingImpl implements _GetStoriesLoading {
  const _$GetStoriesLoadingImpl();

  @override
  String toString() {
    return 'GetStoriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStoriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(GetStoriesResponseModel responseModel) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(GetStoriesResponseModel responseModel)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(GetStoriesResponseModel responseModel)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoriesLoading value) loading,
    required TResult Function(_GetStoriesFailed value) failed,
    required TResult Function(_GetStoriesSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoriesLoading value)? loading,
    TResult? Function(_GetStoriesFailed value)? failed,
    TResult? Function(_GetStoriesSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoriesLoading value)? loading,
    TResult Function(_GetStoriesFailed value)? failed,
    TResult Function(_GetStoriesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetStoriesLoading implements GetStoriesState {
  const factory _GetStoriesLoading() = _$GetStoriesLoadingImpl;
}

/// @nodoc
abstract class _$$GetStoriesFailedImplCopyWith<$Res> {
  factory _$$GetStoriesFailedImplCopyWith(_$GetStoriesFailedImpl value,
          $Res Function(_$GetStoriesFailedImpl) then) =
      __$$GetStoriesFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetStoriesFailedImplCopyWithImpl<$Res>
    extends _$GetStoriesStateCopyWithImpl<$Res, _$GetStoriesFailedImpl>
    implements _$$GetStoriesFailedImplCopyWith<$Res> {
  __$$GetStoriesFailedImplCopyWithImpl(_$GetStoriesFailedImpl _value,
      $Res Function(_$GetStoriesFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetStoriesFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetStoriesFailedImpl implements _GetStoriesFailed {
  const _$GetStoriesFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GetStoriesState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoriesFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoriesFailedImplCopyWith<_$GetStoriesFailedImpl> get copyWith =>
      __$$GetStoriesFailedImplCopyWithImpl<_$GetStoriesFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(GetStoriesResponseModel responseModel) success,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(GetStoriesResponseModel responseModel)? success,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(GetStoriesResponseModel responseModel)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoriesLoading value) loading,
    required TResult Function(_GetStoriesFailed value) failed,
    required TResult Function(_GetStoriesSuccess value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoriesLoading value)? loading,
    TResult? Function(_GetStoriesFailed value)? failed,
    TResult? Function(_GetStoriesSuccess value)? success,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoriesLoading value)? loading,
    TResult Function(_GetStoriesFailed value)? failed,
    TResult Function(_GetStoriesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _GetStoriesFailed implements GetStoriesState {
  const factory _GetStoriesFailed(final String message) =
      _$GetStoriesFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$GetStoriesFailedImplCopyWith<_$GetStoriesFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStoriesSuccessImplCopyWith<$Res> {
  factory _$$GetStoriesSuccessImplCopyWith(_$GetStoriesSuccessImpl value,
          $Res Function(_$GetStoriesSuccessImpl) then) =
      __$$GetStoriesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetStoriesResponseModel responseModel});

  $GetStoriesResponseModelCopyWith<$Res> get responseModel;
}

/// @nodoc
class __$$GetStoriesSuccessImplCopyWithImpl<$Res>
    extends _$GetStoriesStateCopyWithImpl<$Res, _$GetStoriesSuccessImpl>
    implements _$$GetStoriesSuccessImplCopyWith<$Res> {
  __$$GetStoriesSuccessImplCopyWithImpl(_$GetStoriesSuccessImpl _value,
      $Res Function(_$GetStoriesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseModel = null,
  }) {
    return _then(_$GetStoriesSuccessImpl(
      null == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as GetStoriesResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GetStoriesResponseModelCopyWith<$Res> get responseModel {
    return $GetStoriesResponseModelCopyWith<$Res>(_value.responseModel,
        (value) {
      return _then(_value.copyWith(responseModel: value));
    });
  }
}

/// @nodoc

class _$GetStoriesSuccessImpl implements _GetStoriesSuccess {
  const _$GetStoriesSuccessImpl(this.responseModel);

  @override
  final GetStoriesResponseModel responseModel;

  @override
  String toString() {
    return 'GetStoriesState.success(responseModel: $responseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoriesSuccessImpl &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoriesSuccessImplCopyWith<_$GetStoriesSuccessImpl> get copyWith =>
      __$$GetStoriesSuccessImplCopyWithImpl<_$GetStoriesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(GetStoriesResponseModel responseModel) success,
  }) {
    return success(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(GetStoriesResponseModel responseModel)? success,
  }) {
    return success?.call(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(GetStoriesResponseModel responseModel)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(responseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStoriesLoading value) loading,
    required TResult Function(_GetStoriesFailed value) failed,
    required TResult Function(_GetStoriesSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStoriesLoading value)? loading,
    TResult? Function(_GetStoriesFailed value)? failed,
    TResult? Function(_GetStoriesSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStoriesLoading value)? loading,
    TResult Function(_GetStoriesFailed value)? failed,
    TResult Function(_GetStoriesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GetStoriesSuccess implements GetStoriesState {
  const factory _GetStoriesSuccess(
      final GetStoriesResponseModel responseModel) = _$GetStoriesSuccessImpl;

  GetStoriesResponseModel get responseModel;
  @JsonKey(ignore: true)
  _$$GetStoriesSuccessImplCopyWith<_$GetStoriesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
