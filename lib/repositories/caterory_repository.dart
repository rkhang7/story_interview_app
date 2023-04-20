import 'package:dio/dio.dart';
import 'package:story_interview_app/apis/categoty_api.dart';
import 'package:story_interview_app/models/entity/category.dart';

class CategoryRepository {
  Dio dio = Dio();

  Future<List<Category>> getCategories() async {
    final client = CategoryApi(dio);
    return await client.getCategories();
  }
}
