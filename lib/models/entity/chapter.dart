// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'chapter.g.dart';

@JsonSerializable()
class Chapter {
  int id;
  String? header;
  String? slug;
  int? viewCount;
  String? updatedDate;
  Story? story;
  Chapter({
    required this.id,
    this.header,
    this.slug,
    this.viewCount,
    this.updatedDate,
    this.story,
  });
  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}

@JsonSerializable()
class Story {
  int id;
  String? slug;
  Story({
    required this.id,
    this.slug,
  });
  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
  Map<String, dynamic> toJson() => _$StoryToJson(this);
}
