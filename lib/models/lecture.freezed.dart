// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lecture _$LectureFromJson(Map<String, dynamic> json) {
  return _Lecture.fromJson(json);
}

/// @nodoc
mixin _$Lecture {
  String get title => throw _privateConstructorUsedError;
  String get youtubeVideoId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LectureCopyWith<Lecture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureCopyWith<$Res> {
  factory $LectureCopyWith(Lecture value, $Res Function(Lecture) then) =
      _$LectureCopyWithImpl<$Res, Lecture>;
  @useResult
  $Res call({String title, String youtubeVideoId, String? description});
}

/// @nodoc
class _$LectureCopyWithImpl<$Res, $Val extends Lecture>
    implements $LectureCopyWith<$Res> {
  _$LectureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? youtubeVideoId = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      youtubeVideoId: null == youtubeVideoId
          ? _value.youtubeVideoId
          : youtubeVideoId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LectureCopyWith<$Res> implements $LectureCopyWith<$Res> {
  factory _$$_LectureCopyWith(
          _$_Lecture value, $Res Function(_$_Lecture) then) =
      __$$_LectureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String youtubeVideoId, String? description});
}

/// @nodoc
class __$$_LectureCopyWithImpl<$Res>
    extends _$LectureCopyWithImpl<$Res, _$_Lecture>
    implements _$$_LectureCopyWith<$Res> {
  __$$_LectureCopyWithImpl(_$_Lecture _value, $Res Function(_$_Lecture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? youtubeVideoId = null,
    Object? description = freezed,
  }) {
    return _then(_$_Lecture(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      youtubeVideoId: null == youtubeVideoId
          ? _value.youtubeVideoId
          : youtubeVideoId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lecture implements _Lecture {
  const _$_Lecture(
      {required this.title, required this.youtubeVideoId, this.description});

  factory _$_Lecture.fromJson(Map<String, dynamic> json) =>
      _$$_LectureFromJson(json);

  @override
  final String title;
  @override
  final String youtubeVideoId;
  @override
  final String? description;

  @override
  String toString() {
    return 'Lecture(title: $title, youtubeVideoId: $youtubeVideoId, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lecture &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.youtubeVideoId, youtubeVideoId) ||
                other.youtubeVideoId == youtubeVideoId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, youtubeVideoId, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LectureCopyWith<_$_Lecture> get copyWith =>
      __$$_LectureCopyWithImpl<_$_Lecture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LectureToJson(
      this,
    );
  }
}

abstract class _Lecture implements Lecture {
  const factory _Lecture(
      {required final String title,
      required final String youtubeVideoId,
      final String? description}) = _$_Lecture;

  factory _Lecture.fromJson(Map<String, dynamic> json) = _$_Lecture.fromJson;

  @override
  String get title;
  @override
  String get youtubeVideoId;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_LectureCopyWith<_$_Lecture> get copyWith =>
      throw _privateConstructorUsedError;
}
