import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:story_interview_app/app/app_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:story_interview_app/models/entity/category.dart';
part 'categoty_api.g.dart';

@RestApi(baseUrl: AppConstant.BASE_URL)
abstract class CategoryApi {
  factory CategoryApi(Dio dio, {String? baseUrl}) {
    dio.interceptors.clear();
    dio.options = BaseOptions(receiveTimeout: 60000, connectTimeout: 60000);

    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
    dio.interceptors.add(InterceptorsWrapper(onError: (error, s) async {
      if (EasyLoading.isShow) {
        EasyLoading.dismiss();
      }
      if (error.response == null) {}

      if (error.response?.statusCode != 200 &&
          error.response?.statusCode != 401) {
        if (error.response != null) {
          EasyLoading.showError(error.response?.data['message']);
        } else {
          EasyLoading.showError(error.message);
        }
      }
    }));
    return _CategoryApi(dio, baseUrl: baseUrl);
  }

  @GET("/category")
  Future<List<Category>> getCategories();
}
