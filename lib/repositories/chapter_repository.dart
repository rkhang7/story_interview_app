import 'package:dio/dio.dart';
import 'package:story_interview_app/apis/chapter_api.dart';
import 'package:story_interview_app/models/entity/chapter.dart';

class ChapterRepository {
  Dio dio = Dio();

  Future<Chapter> getChapterById({required String id}) async {
    final client = ChapterApi(dio);
    return await client.getChapterById(id);
  }
}
