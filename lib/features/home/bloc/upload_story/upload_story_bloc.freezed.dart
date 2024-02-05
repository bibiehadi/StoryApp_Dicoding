// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_story_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickImageStoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImagePhoto,
    required TResult Function() pickImageGalery,
    required TResult Function(
            XFile imageFile, String description, num lat, num lon)
        uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImagePhoto,
    TResult? Function()? pickImageGalery,
    TResult? Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImagePhoto,
    TResult Function()? pickImageGalery,
    TResult Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImagePhotoEvent value) pickImagePhoto,
    required TResult Function(_PickImageGaleryEvent value) pickImageGalery,
    required TResult Function(_UploadImageEvent value) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult? Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult? Function(_UploadImageEvent value)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult Function(_UploadImageEvent value)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickImageStoryEventCopyWith<$Res> {
  factory $PickImageStoryEventCopyWith(
          PickImageStoryEvent value, $Res Function(PickImageStoryEvent) then) =
      _$PickImageStoryEventCopyWithImpl<$Res, PickImageStoryEvent>;
}

/// @nodoc
class _$PickImageStoryEventCopyWithImpl<$Res, $Val extends PickImageStoryEvent>
    implements $PickImageStoryEventCopyWith<$Res> {
  _$PickImageStoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PickImagePhotoEventImplCopyWith<$Res> {
  factory _$$PickImagePhotoEventImplCopyWith(_$PickImagePhotoEventImpl value,
          $Res Function(_$PickImagePhotoEventImpl) then) =
      __$$PickImagePhotoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImagePhotoEventImplCopyWithImpl<$Res>
    extends _$PickImageStoryEventCopyWithImpl<$Res, _$PickImagePhotoEventImpl>
    implements _$$PickImagePhotoEventImplCopyWith<$Res> {
  __$$PickImagePhotoEventImplCopyWithImpl(_$PickImagePhotoEventImpl _value,
      $Res Function(_$PickImagePhotoEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImagePhotoEventImpl implements _PickImagePhotoEvent {
  const _$PickImagePhotoEventImpl();

  @override
  String toString() {
    return 'PickImageStoryEvent.pickImagePhoto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImagePhotoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImagePhoto,
    required TResult Function() pickImageGalery,
    required TResult Function(
            XFile imageFile, String description, num lat, num lon)
        uploadImage,
  }) {
    return pickImagePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImagePhoto,
    TResult? Function()? pickImageGalery,
    TResult? Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
  }) {
    return pickImagePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImagePhoto,
    TResult Function()? pickImageGalery,
    TResult Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
    required TResult orElse(),
  }) {
    if (pickImagePhoto != null) {
      return pickImagePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImagePhotoEvent value) pickImagePhoto,
    required TResult Function(_PickImageGaleryEvent value) pickImageGalery,
    required TResult Function(_UploadImageEvent value) uploadImage,
  }) {
    return pickImagePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult? Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult? Function(_UploadImageEvent value)? uploadImage,
  }) {
    return pickImagePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult Function(_UploadImageEvent value)? uploadImage,
    required TResult orElse(),
  }) {
    if (pickImagePhoto != null) {
      return pickImagePhoto(this);
    }
    return orElse();
  }
}

abstract class _PickImagePhotoEvent implements PickImageStoryEvent {
  const factory _PickImagePhotoEvent() = _$PickImagePhotoEventImpl;
}

/// @nodoc
abstract class _$$PickImageGaleryEventImplCopyWith<$Res> {
  factory _$$PickImageGaleryEventImplCopyWith(_$PickImageGaleryEventImpl value,
          $Res Function(_$PickImageGaleryEventImpl) then) =
      __$$PickImageGaleryEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageGaleryEventImplCopyWithImpl<$Res>
    extends _$PickImageStoryEventCopyWithImpl<$Res, _$PickImageGaleryEventImpl>
    implements _$$PickImageGaleryEventImplCopyWith<$Res> {
  __$$PickImageGaleryEventImplCopyWithImpl(_$PickImageGaleryEventImpl _value,
      $Res Function(_$PickImageGaleryEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImageGaleryEventImpl implements _PickImageGaleryEvent {
  const _$PickImageGaleryEventImpl();

  @override
  String toString() {
    return 'PickImageStoryEvent.pickImageGalery()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageGaleryEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImagePhoto,
    required TResult Function() pickImageGalery,
    required TResult Function(
            XFile imageFile, String description, num lat, num lon)
        uploadImage,
  }) {
    return pickImageGalery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImagePhoto,
    TResult? Function()? pickImageGalery,
    TResult? Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
  }) {
    return pickImageGalery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImagePhoto,
    TResult Function()? pickImageGalery,
    TResult Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
    required TResult orElse(),
  }) {
    if (pickImageGalery != null) {
      return pickImageGalery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImagePhotoEvent value) pickImagePhoto,
    required TResult Function(_PickImageGaleryEvent value) pickImageGalery,
    required TResult Function(_UploadImageEvent value) uploadImage,
  }) {
    return pickImageGalery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult? Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult? Function(_UploadImageEvent value)? uploadImage,
  }) {
    return pickImageGalery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult Function(_UploadImageEvent value)? uploadImage,
    required TResult orElse(),
  }) {
    if (pickImageGalery != null) {
      return pickImageGalery(this);
    }
    return orElse();
  }
}

abstract class _PickImageGaleryEvent implements PickImageStoryEvent {
  const factory _PickImageGaleryEvent() = _$PickImageGaleryEventImpl;
}

/// @nodoc
abstract class _$$UploadImageEventImplCopyWith<$Res> {
  factory _$$UploadImageEventImplCopyWith(_$UploadImageEventImpl value,
          $Res Function(_$UploadImageEventImpl) then) =
      __$$UploadImageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile imageFile, String description, num lat, num lon});
}

/// @nodoc
class __$$UploadImageEventImplCopyWithImpl<$Res>
    extends _$PickImageStoryEventCopyWithImpl<$Res, _$UploadImageEventImpl>
    implements _$$UploadImageEventImplCopyWith<$Res> {
  __$$UploadImageEventImplCopyWithImpl(_$UploadImageEventImpl _value,
      $Res Function(_$UploadImageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
    Object? description = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$UploadImageEventImpl(
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$UploadImageEventImpl implements _UploadImageEvent {
  const _$UploadImageEventImpl(
      {required this.imageFile,
      required this.description,
      required this.lat,
      required this.lon});

  @override
  final XFile imageFile;
  @override
  final String description;
  @override
  final num lat;
  @override
  final num lon;

  @override
  String toString() {
    return 'PickImageStoryEvent.uploadImage(imageFile: $imageFile, description: $description, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageEventImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, imageFile, description, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageEventImplCopyWith<_$UploadImageEventImpl> get copyWith =>
      __$$UploadImageEventImplCopyWithImpl<_$UploadImageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickImagePhoto,
    required TResult Function() pickImageGalery,
    required TResult Function(
            XFile imageFile, String description, num lat, num lon)
        uploadImage,
  }) {
    return uploadImage(imageFile, description, lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickImagePhoto,
    TResult? Function()? pickImageGalery,
    TResult? Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
  }) {
    return uploadImage?.call(imageFile, description, lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickImagePhoto,
    TResult Function()? pickImageGalery,
    TResult Function(XFile imageFile, String description, num lat, num lon)?
        uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(imageFile, description, lat, lon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImagePhotoEvent value) pickImagePhoto,
    required TResult Function(_PickImageGaleryEvent value) pickImageGalery,
    required TResult Function(_UploadImageEvent value) uploadImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult? Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult? Function(_UploadImageEvent value)? uploadImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImagePhotoEvent value)? pickImagePhoto,
    TResult Function(_PickImageGaleryEvent value)? pickImageGalery,
    TResult Function(_UploadImageEvent value)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImageEvent implements PickImageStoryEvent {
  const factory _UploadImageEvent(
      {required final XFile imageFile,
      required final String description,
      required final num lat,
      required final num lon}) = _$UploadImageEventImpl;

  XFile get imageFile;
  String get description;
  num get lat;
  num get lon;
  @JsonKey(ignore: true)
  _$$UploadImageEventImplCopyWith<_$UploadImageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PickImageStoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() uploadLoading,
    required TResult Function(String message) uploadFailed,
    required TResult Function(RegisterResponseModel responseModel)
        uploadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? uploadLoading,
    TResult? Function(String message)? uploadFailed,
    TResult? Function(RegisterResponseModel responseModel)? uploadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? uploadLoading,
    TResult Function(String message)? uploadFailed,
    TResult Function(RegisterResponseModel responseModel)? uploadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImageUploadLoading value) uploadLoading,
    required TResult Function(_PickImageUploadFailed value) uploadFailed,
    required TResult Function(_PickImageUploadSuccess value) uploadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImageUploadLoading value)? uploadLoading,
    TResult? Function(_PickImageUploadFailed value)? uploadFailed,
    TResult? Function(_PickImageUploadSuccess value)? uploadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImageUploadLoading value)? uploadLoading,
    TResult Function(_PickImageUploadFailed value)? uploadFailed,
    TResult Function(_PickImageUploadSuccess value)? uploadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickImageStoryStateCopyWith<$Res> {
  factory $PickImageStoryStateCopyWith(
          PickImageStoryState value, $Res Function(PickImageStoryState) then) =
      _$PickImageStoryStateCopyWithImpl<$Res, PickImageStoryState>;
}

/// @nodoc
class _$PickImageStoryStateCopyWithImpl<$Res, $Val extends PickImageStoryState>
    implements $PickImageStoryStateCopyWith<$Res> {
  _$PickImageStoryStateCopyWithImpl(this._value, this._then);

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
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'PickImageStoryState.initial()';
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
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() uploadLoading,
    required TResult Function(String message) uploadFailed,
    required TResult Function(RegisterResponseModel responseModel)
        uploadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? uploadLoading,
    TResult? Function(String message)? uploadFailed,
    TResult? Function(RegisterResponseModel responseModel)? uploadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? uploadLoading,
    TResult Function(String message)? uploadFailed,
    TResult Function(RegisterResponseModel responseModel)? uploadSuccess,
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
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImageUploadLoading value) uploadLoading,
    required TResult Function(_PickImageUploadFailed value) uploadFailed,
    required TResult Function(_PickImageUploadSuccess value) uploadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImageUploadLoading value)? uploadLoading,
    TResult? Function(_PickImageUploadFailed value)? uploadFailed,
    TResult? Function(_PickImageUploadSuccess value)? uploadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImageUploadLoading value)? uploadLoading,
    TResult Function(_PickImageUploadFailed value)? uploadFailed,
    TResult Function(_PickImageUploadSuccess value)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PickImageStoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PickImageStoryLoadingImplCopyWith<$Res> {
  factory _$$PickImageStoryLoadingImplCopyWith(
          _$PickImageStoryLoadingImpl value,
          $Res Function(_$PickImageStoryLoadingImpl) then) =
      __$$PickImageStoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageStoryLoadingImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$PickImageStoryLoadingImpl>
    implements _$$PickImageStoryLoadingImplCopyWith<$Res> {
  __$$PickImageStoryLoadingImplCopyWithImpl(_$PickImageStoryLoadingImpl _value,
      $Res Function(_$PickImageStoryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImageStoryLoadingImpl implements _PickImageStoryLoading {
  const _$PickImageStoryLoadingImpl();

  @override
  String toString() {
    return 'PickImageStoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageStoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() uploadLoading,
    required TResult Function(String message) uploadFailed,
    required TResult Function(RegisterResponseModel responseModel)
        uploadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? uploadLoading,
    TResult? Function(String message)? uploadFailed,
    TResult? Function(RegisterResponseModel responseModel)? uploadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? uploadLoading,
    TResult Function(String message)? uploadFailed,
    TResult Function(RegisterResponseModel responseModel)? uploadSuccess,
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
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImageUploadLoading value) uploadLoading,
    required TResult Function(_PickImageUploadFailed value) uploadFailed,
    required TResult Function(_PickImageUploadSuccess value) uploadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImageUploadLoading value)? uploadLoading,
    TResult? Function(_PickImageUploadFailed value)? uploadFailed,
    TResult? Function(_PickImageUploadSuccess value)? uploadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImageUploadLoading value)? uploadLoading,
    TResult Function(_PickImageUploadFailed value)? uploadFailed,
    TResult Function(_PickImageUploadSuccess value)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PickImageStoryLoading implements PickImageStoryState {
  const factory _PickImageStoryLoading() = _$PickImageStoryLoadingImpl;
}

/// @nodoc
abstract class _$$PickImageStoryFailedImplCopyWith<$Res> {
  factory _$$PickImageStoryFailedImplCopyWith(_$PickImageStoryFailedImpl value,
          $Res Function(_$PickImageStoryFailedImpl) then) =
      __$$PickImageStoryFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PickImageStoryFailedImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$PickImageStoryFailedImpl>
    implements _$$PickImageStoryFailedImplCopyWith<$Res> {
  __$$PickImageStoryFailedImplCopyWithImpl(_$PickImageStoryFailedImpl _value,
      $Res Function(_$PickImageStoryFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PickImageStoryFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickImageStoryFailedImpl implements _PickImageStoryFailed {
  const _$PickImageStoryFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PickImageStoryState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageStoryFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageStoryFailedImplCopyWith<_$PickImageStoryFailedImpl>
      get copyWith =>
          __$$PickImageStoryFailedImplCopyWithImpl<_$PickImageStoryFailedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() uploadLoading,
    required TResult Function(String message) uploadFailed,
    required TResult Function(RegisterResponseModel responseModel)
        uploadSuccess,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? uploadLoading,
    TResult? Function(String message)? uploadFailed,
    TResult? Function(RegisterResponseModel responseModel)? uploadSuccess,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? uploadLoading,
    TResult Function(String message)? uploadFailed,
    TResult Function(RegisterResponseModel responseModel)? uploadSuccess,
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
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImageUploadLoading value) uploadLoading,
    required TResult Function(_PickImageUploadFailed value) uploadFailed,
    required TResult Function(_PickImageUploadSuccess value) uploadSuccess,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImageUploadLoading value)? uploadLoading,
    TResult? Function(_PickImageUploadFailed value)? uploadFailed,
    TResult? Function(_PickImageUploadSuccess value)? uploadSuccess,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImageUploadLoading value)? uploadLoading,
    TResult Function(_PickImageUploadFailed value)? uploadFailed,
    TResult Function(_PickImageUploadSuccess value)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _PickImageStoryFailed implements PickImageStoryState {
  const factory _PickImageStoryFailed(final String message) =
      _$PickImageStoryFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PickImageStoryFailedImplCopyWith<_$PickImageStoryFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageStorySuccessImplCopyWith<$Res> {
  factory _$$PickImageStorySuccessImplCopyWith(
          _$PickImageStorySuccessImpl value,
          $Res Function(_$PickImageStorySuccessImpl) then) =
      __$$PickImageStorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath, XFile imageFile});
}

/// @nodoc
class __$$PickImageStorySuccessImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$PickImageStorySuccessImpl>
    implements _$$PickImageStorySuccessImplCopyWith<$Res> {
  __$$PickImageStorySuccessImplCopyWithImpl(_$PickImageStorySuccessImpl _value,
      $Res Function(_$PickImageStorySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? imageFile = null,
  }) {
    return _then(_$PickImageStorySuccessImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$PickImageStorySuccessImpl implements _PickImageStorySuccess {
  const _$PickImageStorySuccessImpl(
      {required this.imagePath, required this.imageFile});

  @override
  final String imagePath;
  @override
  final XFile imageFile;

  @override
  String toString() {
    return 'PickImageStoryState.success(imagePath: $imagePath, imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageStorySuccessImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageStorySuccessImplCopyWith<_$PickImageStorySuccessImpl>
      get copyWith => __$$PickImageStorySuccessImplCopyWithImpl<
          _$PickImageStorySuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() uploadLoading,
    required TResult Function(String message) uploadFailed,
    required TResult Function(RegisterResponseModel responseModel)
        uploadSuccess,
  }) {
    return success(imagePath, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? uploadLoading,
    TResult? Function(String message)? uploadFailed,
    TResult? Function(RegisterResponseModel responseModel)? uploadSuccess,
  }) {
    return success?.call(imagePath, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? uploadLoading,
    TResult Function(String message)? uploadFailed,
    TResult Function(RegisterResponseModel responseModel)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(imagePath, imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImageUploadLoading value) uploadLoading,
    required TResult Function(_PickImageUploadFailed value) uploadFailed,
    required TResult Function(_PickImageUploadSuccess value) uploadSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImageUploadLoading value)? uploadLoading,
    TResult? Function(_PickImageUploadFailed value)? uploadFailed,
    TResult? Function(_PickImageUploadSuccess value)? uploadSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImageUploadLoading value)? uploadLoading,
    TResult Function(_PickImageUploadFailed value)? uploadFailed,
    TResult Function(_PickImageUploadSuccess value)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PickImageStorySuccess implements PickImageStoryState {
  const factory _PickImageStorySuccess(
      {required final String imagePath,
      required final XFile imageFile}) = _$PickImageStorySuccessImpl;

  String get imagePath;
  XFile get imageFile;
  @JsonKey(ignore: true)
  _$$PickImageStorySuccessImplCopyWith<_$PickImageStorySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageUploadLoadingImplCopyWith<$Res> {
  factory _$$PickImageUploadLoadingImplCopyWith(
          _$PickImageUploadLoadingImpl value,
          $Res Function(_$PickImageUploadLoadingImpl) then) =
      __$$PickImageUploadLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageUploadLoadingImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res,
        _$PickImageUploadLoadingImpl>
    implements _$$PickImageUploadLoadingImplCopyWith<$Res> {
  __$$PickImageUploadLoadingImplCopyWithImpl(
      _$PickImageUploadLoadingImpl _value,
      $Res Function(_$PickImageUploadLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImageUploadLoadingImpl implements _PickImageUploadLoading {
  const _$PickImageUploadLoadingImpl();

  @override
  String toString() {
    return 'PickImageStoryState.uploadLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageUploadLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() uploadLoading,
    required TResult Function(String message) uploadFailed,
    required TResult Function(RegisterResponseModel responseModel)
        uploadSuccess,
  }) {
    return uploadLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? uploadLoading,
    TResult? Function(String message)? uploadFailed,
    TResult? Function(RegisterResponseModel responseModel)? uploadSuccess,
  }) {
    return uploadLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? uploadLoading,
    TResult Function(String message)? uploadFailed,
    TResult Function(RegisterResponseModel responseModel)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (uploadLoading != null) {
      return uploadLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImageUploadLoading value) uploadLoading,
    required TResult Function(_PickImageUploadFailed value) uploadFailed,
    required TResult Function(_PickImageUploadSuccess value) uploadSuccess,
  }) {
    return uploadLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImageUploadLoading value)? uploadLoading,
    TResult? Function(_PickImageUploadFailed value)? uploadFailed,
    TResult? Function(_PickImageUploadSuccess value)? uploadSuccess,
  }) {
    return uploadLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImageUploadLoading value)? uploadLoading,
    TResult Function(_PickImageUploadFailed value)? uploadFailed,
    TResult Function(_PickImageUploadSuccess value)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (uploadLoading != null) {
      return uploadLoading(this);
    }
    return orElse();
  }
}

abstract class _PickImageUploadLoading implements PickImageStoryState {
  const factory _PickImageUploadLoading() = _$PickImageUploadLoadingImpl;
}

/// @nodoc
abstract class _$$PickImageUploadFailedImplCopyWith<$Res> {
  factory _$$PickImageUploadFailedImplCopyWith(
          _$PickImageUploadFailedImpl value,
          $Res Function(_$PickImageUploadFailedImpl) then) =
      __$$PickImageUploadFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PickImageUploadFailedImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res, _$PickImageUploadFailedImpl>
    implements _$$PickImageUploadFailedImplCopyWith<$Res> {
  __$$PickImageUploadFailedImplCopyWithImpl(_$PickImageUploadFailedImpl _value,
      $Res Function(_$PickImageUploadFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PickImageUploadFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickImageUploadFailedImpl implements _PickImageUploadFailed {
  const _$PickImageUploadFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PickImageStoryState.uploadFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageUploadFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageUploadFailedImplCopyWith<_$PickImageUploadFailedImpl>
      get copyWith => __$$PickImageUploadFailedImplCopyWithImpl<
          _$PickImageUploadFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() uploadLoading,
    required TResult Function(String message) uploadFailed,
    required TResult Function(RegisterResponseModel responseModel)
        uploadSuccess,
  }) {
    return uploadFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? uploadLoading,
    TResult? Function(String message)? uploadFailed,
    TResult? Function(RegisterResponseModel responseModel)? uploadSuccess,
  }) {
    return uploadFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? uploadLoading,
    TResult Function(String message)? uploadFailed,
    TResult Function(RegisterResponseModel responseModel)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (uploadFailed != null) {
      return uploadFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImageUploadLoading value) uploadLoading,
    required TResult Function(_PickImageUploadFailed value) uploadFailed,
    required TResult Function(_PickImageUploadSuccess value) uploadSuccess,
  }) {
    return uploadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImageUploadLoading value)? uploadLoading,
    TResult? Function(_PickImageUploadFailed value)? uploadFailed,
    TResult? Function(_PickImageUploadSuccess value)? uploadSuccess,
  }) {
    return uploadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImageUploadLoading value)? uploadLoading,
    TResult Function(_PickImageUploadFailed value)? uploadFailed,
    TResult Function(_PickImageUploadSuccess value)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (uploadFailed != null) {
      return uploadFailed(this);
    }
    return orElse();
  }
}

abstract class _PickImageUploadFailed implements PickImageStoryState {
  const factory _PickImageUploadFailed(final String message) =
      _$PickImageUploadFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PickImageUploadFailedImplCopyWith<_$PickImageUploadFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageUploadSuccessImplCopyWith<$Res> {
  factory _$$PickImageUploadSuccessImplCopyWith(
          _$PickImageUploadSuccessImpl value,
          $Res Function(_$PickImageUploadSuccessImpl) then) =
      __$$PickImageUploadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterResponseModel responseModel});

  $RegisterResponseModelCopyWith<$Res> get responseModel;
}

/// @nodoc
class __$$PickImageUploadSuccessImplCopyWithImpl<$Res>
    extends _$PickImageStoryStateCopyWithImpl<$Res,
        _$PickImageUploadSuccessImpl>
    implements _$$PickImageUploadSuccessImplCopyWith<$Res> {
  __$$PickImageUploadSuccessImplCopyWithImpl(
      _$PickImageUploadSuccessImpl _value,
      $Res Function(_$PickImageUploadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseModel = null,
  }) {
    return _then(_$PickImageUploadSuccessImpl(
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

class _$PickImageUploadSuccessImpl implements _PickImageUploadSuccess {
  const _$PickImageUploadSuccessImpl(this.responseModel);

  @override
  final RegisterResponseModel responseModel;

  @override
  String toString() {
    return 'PickImageStoryState.uploadSuccess(responseModel: $responseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImageUploadSuccessImpl &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageUploadSuccessImplCopyWith<_$PickImageUploadSuccessImpl>
      get copyWith => __$$PickImageUploadSuccessImplCopyWithImpl<
          _$PickImageUploadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failed,
    required TResult Function(String imagePath, XFile imageFile) success,
    required TResult Function() uploadLoading,
    required TResult Function(String message) uploadFailed,
    required TResult Function(RegisterResponseModel responseModel)
        uploadSuccess,
  }) {
    return uploadSuccess(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failed,
    TResult? Function(String imagePath, XFile imageFile)? success,
    TResult? Function()? uploadLoading,
    TResult? Function(String message)? uploadFailed,
    TResult? Function(RegisterResponseModel responseModel)? uploadSuccess,
  }) {
    return uploadSuccess?.call(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failed,
    TResult Function(String imagePath, XFile imageFile)? success,
    TResult Function()? uploadLoading,
    TResult Function(String message)? uploadFailed,
    TResult Function(RegisterResponseModel responseModel)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (uploadSuccess != null) {
      return uploadSuccess(responseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PickImageStoryLoading value) loading,
    required TResult Function(_PickImageStoryFailed value) failed,
    required TResult Function(_PickImageStorySuccess value) success,
    required TResult Function(_PickImageUploadLoading value) uploadLoading,
    required TResult Function(_PickImageUploadFailed value) uploadFailed,
    required TResult Function(_PickImageUploadSuccess value) uploadSuccess,
  }) {
    return uploadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PickImageStoryLoading value)? loading,
    TResult? Function(_PickImageStoryFailed value)? failed,
    TResult? Function(_PickImageStorySuccess value)? success,
    TResult? Function(_PickImageUploadLoading value)? uploadLoading,
    TResult? Function(_PickImageUploadFailed value)? uploadFailed,
    TResult? Function(_PickImageUploadSuccess value)? uploadSuccess,
  }) {
    return uploadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PickImageStoryLoading value)? loading,
    TResult Function(_PickImageStoryFailed value)? failed,
    TResult Function(_PickImageStorySuccess value)? success,
    TResult Function(_PickImageUploadLoading value)? uploadLoading,
    TResult Function(_PickImageUploadFailed value)? uploadFailed,
    TResult Function(_PickImageUploadSuccess value)? uploadSuccess,
    required TResult orElse(),
  }) {
    if (uploadSuccess != null) {
      return uploadSuccess(this);
    }
    return orElse();
  }
}

abstract class _PickImageUploadSuccess implements PickImageStoryState {
  const factory _PickImageUploadSuccess(
      final RegisterResponseModel responseModel) = _$PickImageUploadSuccessImpl;

  RegisterResponseModel get responseModel;
  @JsonKey(ignore: true)
  _$$PickImageUploadSuccessImplCopyWith<_$PickImageUploadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
