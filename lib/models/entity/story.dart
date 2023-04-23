class Story {
  int id;
  String? title;
  String? author;
  String? slug;
  List<String>? description;
  String? poster;
  List<String>? categoryList;
  String? status;
  String? uploadDate;
  String? updatedDate;
  String? deletedAt;
  Story({
    required this.id,
    this.title,
    this.author,
    this.slug,
    required this.description,
    this.poster,
    required this.categoryList,
    this.status,
    this.uploadDate,
    this.updatedDate,
    this.deletedAt,
  });
  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
  Map<String, dynamic> toJson() => _$StoryToJson(this);
}

Story _$StoryFromJson(Map<String, dynamic> json) => Story(
      id: json['id'] as int,
      title: json['title'] as String?,
      author: json['author'] as String?,
      slug: json['slug'] as String?,
      description: (json['description'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      poster: json['poster'] as String?,
      categoryList: (json['categoryList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String?,
      uploadDate: json['uploadDate'] as String?,
      updatedDate: json['updatedDate'] as String?,
      deletedAt: json['deletedAt'] as String?,
    );

Map<String, dynamic> _$StoryToJson(Story instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'slug': instance.slug,
      'description': instance.description,
      'poster': instance.poster,
      'categoryList': instance.categoryList,
      'status': instance.status,
      'uploadDate': instance.uploadDate,
      'updatedDate': instance.updatedDate,
      'deletedAt': instance.deletedAt,
    };
