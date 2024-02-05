// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_stories_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetStoriesResponseModel _$GetStoriesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetStoriesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetStoriesResponseModel {
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ListStory>? get listStory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStoriesResponseModelCopyWith<GetStoriesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStoriesResponseModelCopyWith<$Res> {
  factory $GetStoriesResponseModelCopyWith(GetStoriesResponseModel value,
          $Res Function(GetStoriesResponseModel) then) =
      _$GetStoriesResponseModelCopyWithImpl<$Res, GetStoriesResponseModel>;
  @useResult
  $Res call({bool? error, String? message, List<ListStory>? listStory});
}

/// @nodoc
class _$GetStoriesResponseModelCopyWithImpl<$Res,
        $Val extends GetStoriesResponseModel>
    implements $GetStoriesResponseModelCopyWith<$Res> {
  _$GetStoriesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? listStory = freezed,
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
      listStory: freezed == listStory
          ? _value.listStory
          : listStory // ignore: cast_nullable_to_non_nullable
              as List<ListStory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStoriesResponseModelImplCopyWith<$Res>
    implements $GetStoriesResponseModelCopyWith<$Res> {
  factory _$$GetStoriesResponseModelImplCopyWith(
          _$GetStoriesResponseModelImpl value,
          $Res Function(_$GetStoriesResponseModelImpl) then) =
      __$$GetStoriesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? error, String? message, List<ListStory>? listStory});
}

/// @nodoc
class __$$GetStoriesResponseModelImplCopyWithImpl<$Res>
    extends _$GetStoriesResponseModelCopyWithImpl<$Res,
        _$GetStoriesResponseModelImpl>
    implements _$$GetStoriesResponseModelImplCopyWith<$Res> {
  __$$GetStoriesResponseModelImplCopyWithImpl(
      _$GetStoriesResponseModelImpl _value,
      $Res Function(_$GetStoriesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? listStory = freezed,
  }) {
    return _then(_$GetStoriesResponseModelImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      listStory: freezed == listStory
          ? _value._listStory
          : listStory // ignore: cast_nullable_to_non_nullable
              as List<ListStory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStoriesResponseModelImpl implements _GetStoriesResponseModel {
  const _$GetStoriesResponseModelImpl(
      {this.error, this.message, final List<ListStory>? listStory})
      : _listStory = listStory;

  factory _$GetStoriesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStoriesResponseModelImplFromJson(json);

  @override
  final bool? error;
  @override
  final String? message;
  final List<ListStory>? _listStory;
  @override
  List<ListStory>? get listStory {
    final value = _listStory;
    if (value == null) return null;
    if (_listStory is EqualUnmodifiableListView) return _listStory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetStoriesResponseModel(error: $error, message: $message, listStory: $listStory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoriesResponseModelImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._listStory, _listStory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message,
      const DeepCollectionEquality().hash(_listStory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoriesResponseModelImplCopyWith<_$GetStoriesResponseModelImpl>
      get copyWith => __$$GetStoriesResponseModelImplCopyWithImpl<
          _$GetStoriesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStoriesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetStoriesResponseModel implements GetStoriesResponseModel {
  const factory _GetStoriesResponseModel(
      {final bool? error,
      final String? message,
      final List<ListStory>? listStory}) = _$GetStoriesResponseModelImpl;

  factory _GetStoriesResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetStoriesResponseModelImpl.fromJson;

  @override
  bool? get error;
  @override
  String? get message;
  @override
  List<ListStory>? get listStory;
  @override
  @JsonKey(ignore: true)
  _$$GetStoriesResponseModelImplCopyWith<_$GetStoriesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ListStory _$ListStoryFromJson(Map<String, dynamic> json) {
  return _ListStory.fromJson(json);
}

/// @nodoc
mixin _$ListStory {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  dynamic get lat => throw _privateConstructorUsedError;
  dynamic get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListStoryCopyWith<ListStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStoryCopyWith<$Res> {
  factory $ListStoryCopyWith(ListStory value, $Res Function(ListStory) then) =
      _$ListStoryCopyWithImpl<$Res, ListStory>;
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
class _$ListStoryCopyWithImpl<$Res, $Val extends ListStory>
    implements $ListStoryCopyWith<$Res> {
  _$ListStoryCopyWithImpl(this._value, this._then);

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
abstract class _$$ListStoryImplCopyWith<$Res>
    implements $ListStoryCopyWith<$Res> {
  factory _$$ListStoryImplCopyWith(
          _$ListStoryImpl value, $Res Function(_$ListStoryImpl) then) =
      __$$ListStoryImplCopyWithImpl<$Res>;
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
class __$$ListStoryImplCopyWithImpl<$Res>
    extends _$ListStoryCopyWithImpl<$Res, _$ListStoryImpl>
    implements _$$ListStoryImplCopyWith<$Res> {
  __$$ListStoryImplCopyWithImpl(
      _$ListStoryImpl _value, $Res Function(_$ListStoryImpl) _then)
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
    return _then(_$ListStoryImpl(
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
class _$ListStoryImpl implements _ListStory {
  const _$ListStoryImpl(
      {this.id,
      this.name,
      this.description,
      this.photoUrl,
      this.createdAt,
      this.lat,
      this.lon});

  factory _$ListStoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListStoryImplFromJson(json);

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
    return 'ListStory(id: $id, name: $name, description: $description, photoUrl: $photoUrl, createdAt: $createdAt, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStoryImpl &&
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
  _$$ListStoryImplCopyWith<_$ListStoryImpl> get copyWith =>
      __$$ListStoryImplCopyWithImpl<_$ListStoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListStoryImplToJson(
      this,
    );
  }
}

abstract class _ListStory implements ListStory {
  const factory _ListStory(
      {final String? id,
      final String? name,
      final String? description,
      final String? photoUrl,
      final DateTime? createdAt,
      final dynamic lat,
      final dynamic lon}) = _$ListStoryImpl;

  factory _ListStory.fromJson(Map<String, dynamic> json) =
      _$ListStoryImpl.fromJson;

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
  _$$ListStoryImplCopyWith<_$ListStoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
