// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      id: json['id'] as int,
      header: json['header'] as String?,
      slug: json['slug'] as String?,
      viewCount: json['viewCount'] as int?,
      updatedDate: json['updatedDate'] as String?,
      story: json['story'] == null
          ? null
          : Story.fromJson(json['story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'id': instance.id,
      'header': instance.header,
      'slug': instance.slug,
      'viewCount': instance.viewCount,
      'updatedDate': instance.updatedDate,
      'story': instance.story,
    };

Story _$StoryFromJson(Map<String, dynamic> json) => Story(
      id: json['id'] as int,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$StoryToJson(Story instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
    };
