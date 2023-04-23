import 'package:story_interview_app/models/entity/story.dart';

class Chapter {
  int id;
  String? header;
  String? slug;
  List<String>? body;
  int? viewCount;
  String? updatedDate;
  Story? story;
  Chapter({
    required this.id,
    this.header,
    this.slug,
    this.body,
    this.viewCount,
    this.updatedDate,
    this.story,
  });
  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      id: json['id'] as int,
      header: json['header'] as String?,
      slug: json['slug'] as String?,
      body: (json['body'] as List<dynamic>?)?.map((e) => e as String).toList(),
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
      'body': instance.body,
      'viewCount': instance.viewCount,
      'updatedDate': instance.updatedDate,
      'story': instance.story,
    };
