import 'package:dio/dio.dart';
import 'package:story_interview_app/apis/categoty_api.dart';
import 'package:story_interview_app/models/entity/category.dart';
import 'package:story_interview_app/models/entity/story.dart';

class CategoryRepository {
  Dio dio = Dio();

  Future<List<Category>> getCategories() async {
    final client = CategoryApi(dio);
    return await client.getCategories();
  }

  Future<List<Story>> getStoriesByCategoryId({
    required String id,
    required int page,
    required int limit,
  }) async {
    final client = CategoryApi(dio);
    return await client.getStoriesByCategoryId(id, page, limit);
  }
}
