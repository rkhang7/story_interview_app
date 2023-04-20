import 'package:get/get.dart';
import 'package:story_interview_app/modules/category/category_page.dart';
import 'package:story_interview_app/modules/main/main_binding.dart';
import 'package:story_interview_app/modules/main/main_page.dart';
import 'package:story_interview_app/routes/app_routes.dart';

class AppPages {
  static var getPages = [
    GetPage(
      name: AppRoutes.MAIN,
      page: () => MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRoutes.CATEGORY,
      page: () => CategoryPage(),
    ),
  ];
}
