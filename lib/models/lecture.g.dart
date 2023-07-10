// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lecture _$$_LectureFromJson(Map<String, dynamic> json) => _$_Lecture(
      title: json['title'] as String,
      youtubeVideoId: json['youtubeVideoId'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_LectureToJson(_$_Lecture instance) =>
    <String, dynamic>{
      'title': instance.title,
      'youtubeVideoId': instance.youtubeVideoId,
      'description': instance.description,
    };
