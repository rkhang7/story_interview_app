// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:story_interview_app/models/entity/story.dart';
part 'chapter.g.dart';

@JsonSerializable()
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
