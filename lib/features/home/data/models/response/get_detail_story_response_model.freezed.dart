// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_detail_story_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDetailStoryResponseModel _$GetDetailStoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetDetailStoryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetDetailStoryResponseModel {
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Story? get story => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDetailStoryResponseModelCopyWith<GetDetailStoryResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailStoryResponseModelCopyWith<$Res> {
  factory $GetDetailStoryResponseModelCopyWith(
          GetDetailStoryResponseModel value,
          $Res Function(GetDetailStoryResponseModel) then) =
      _$GetDetailStoryResponseModelCopyWithImpl<$Res,
          GetDetailStoryResponseModel>;
  @useResult
  $Res call({bool? error, String? message, Story? story});

  $StoryCopyWith<$Res>? get story;
}

/// @nodoc
class _$GetDetailStoryResponseModelCopyWithImpl<$Res,
        $Val extends GetDetailStoryResponseModel>
    implements $GetDetailStoryResponseModelCopyWith<$Res> {
  _$GetDetailStoryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? story = freezed,
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
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res>? get story {
    if (_value.story == null) {
      return null;
    }

    return $StoryCopyWith<$Res>(_value.story!, (value) {
      return _then(_value.copyWith(story: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetDetailStoryResponseModelImplCopyWith<$Res>
    implements $GetDetailStoryResponseModelCopyWith<$Res> {
  factory _$$GetDetailStoryResponseModelImplCopyWith(
          _$GetDetailStoryResponseModelImpl value,
          $Res Function(_$GetDetailStoryResponseModelImpl) then) =
      __$$GetDetailStoryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? error, String? message, Story? story});

  @override
  $StoryCopyWith<$Res>? get story;
}

/// @nodoc
class __$$GetDetailStoryResponseModelImplCopyWithImpl<$Res>
    extends _$GetDetailStoryResponseModelCopyWithImpl<$Res,
        _$GetDetailStoryResponseModelImpl>
    implements _$$GetDetailStoryResponseModelImplCopyWith<$Res> {
  __$$GetDetailStoryResponseModelImplCopyWithImpl(
      _$GetDetailStoryResponseModelImpl _value,
      $Res Function(_$GetDetailStoryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? story = freezed,
  }) {
    return _then(_$GetDetailStoryResponseModelImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDetailStoryResponseModelImpl
    implements _GetDetailStoryResponseModel {
  const _$GetDetailStoryResponseModelImpl(
      {this.error, this.message, this.story});

  factory _$GetDetailStoryResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetDetailStoryResponseModelImplFromJson(json);

  @override
  final bool? error;
  @override
  final String? message;
  @override
  final Story? story;

  @override
  String toString() {
    return 'GetDetailStoryResponseModel(error: $error, message: $message, story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailStoryResponseModelImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.story, story) || other.story == story));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, story);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailStoryResponseModelImplCopyWith<_$GetDetailStoryResponseModelImpl>
      get copyWith => __$$GetDetailStoryResponseModelImplCopyWithImpl<
          _$GetDetailStoryResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDetailStoryResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetDetailStoryResponseModel
    implements GetDetailStoryResponseModel {
  const factory _GetDetailStoryResponseModel(
      {final bool? error,
      final String? message,
      final Story? story}) = _$GetDetailStoryResponseModelImpl;

  factory _GetDetailStoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetDetailStoryResponseModelImpl.fromJson;

  @override
  bool? get error;
  @override
  String? get message;
  @override
  Story? get story;
  @override
  @JsonKey(ignore: true)
  _$$GetDetailStoryResponseModelImplCopyWith<_$GetDetailStoryResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
mixin _$Story {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  dynamic get lat => throw _privateConstructorUsedError;
  dynamic get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res, Story>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? photoUrl,
      DateTime? createdAt,
      dynamic lat,
      dynamic lon});
}

/// @nodoc
class _$StoryCopyWithImpl<$Res, $Val extends Story>
    implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photoUrl = freezed,
    Object? createdAt = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoryImplCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$$StoryImplCopyWith(
          _$StoryImpl value, $Res Function(_$StoryImpl) then) =
      __$$StoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? photoUrl,
      DateTime? createdAt,
      dynamic lat,
      dynamic lon});
}

/// @nodoc
class __$$StoryImplCopyWithImpl<$Res>
    extends _$StoryCopyWithImpl<$Res, _$StoryImpl>
    implements _$$StoryImplCopyWith<$Res> {
  __$$StoryImplCopyWithImpl(
      _$StoryImpl _value, $Res Function(_$StoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photoUrl = freezed,
    Object? createdAt = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$StoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryImpl implements _Story {
  const _$StoryImpl(
      {this.id,
      this.name,
      this.description,
      this.photoUrl,
      this.createdAt,
      this.lat,
      this.lon});

  factory _$StoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? photoUrl;
  @override
  final DateTime? createdAt;
  @override
  final dynamic lat;
  @override
  final dynamic lon;

  @override
  String toString() {
    return 'Story(id: $id, name: $name, description: $description, photoUrl: $photoUrl, createdAt: $createdAt, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      photoUrl,
      createdAt,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      __$$StoryImplCopyWithImpl<_$StoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryImplToJson(
      this,
    );
  }
}

abstract class _Story implements Story {
  const factory _Story(
      {final String? id,
      final String? name,
      final String? description,
      final String? photoUrl,
      final DateTime? createdAt,
      final dynamic lat,
      final dynamic lon}) = _$StoryImpl;

  factory _Story.fromJson(Map<String, dynamic> json) = _$StoryImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get photoUrl;
  @override
  DateTime? get createdAt;
  @override
  dynamic get lat;
  @override
  dynamic get lon;
  @override
  @JsonKey(ignore: true)
  _$$StoryImplCopyWith<_$StoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
