import 'package:dio/dio.dart';
import 'package:story_interview_app/apis/story_api.dart';
import 'package:story_interview_app/models/entity/chapter.dart';
import 'package:story_interview_app/models/entity/story.dart';

class StoryRepository {
  Dio dio = Dio();

  Future<List<Chapter>> getChapters({required String slug}) async {
    final client = StoryApi(dio);
    return await client.getChapters(slug);
  }
}
