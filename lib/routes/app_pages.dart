import 'package:get/get.dart';
import 'package:story_interview_app/modules/category/category_page.dart';
import 'package:story_interview_app/modules/category_story/category_story_binding.dart';
import 'package:story_interview_app/modules/category_story/category_story_page.dart';
import 'package:story_interview_app/modules/detail_chapter/detail_chapter_binding.dart';
import 'package:story_interview_app/modules/detail_chapter/detail_chapter_page.dart';
import 'package:story_interview_app/modules/main/main_binding.dart';
import 'package:story_interview_app/modules/main/main_page.dart';
import 'package:story_interview_app/modules/slug_chapter/pages/list_chapter_page.dart';
import 'package:story_interview_app/modules/slug_chapter/slug_chapter_binding.dart';
import 'package:story_interview_app/modules/slug_chapter/pages/slug_chapter_page.dart';
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
    GetPage(
      name: AppRoutes.CATEGORY_STORY,
      page: () => CategoryStoryPage(),
      binding: CategoryStoryBinding(),
    ),
    GetPage(
      name: AppRoutes.SLUG_CHAPTER,
      page: () => SlugChapterPage(),
      binding: SlugChapterBinding(),
    ),
    GetPage(
      name: AppRoutes.LIST_CHAPTER,
      page: () => ListChapterPage(),
    ),
    GetPage(
      name: AppRoutes.DETAIL_CHAPTER,
      page: () => DetailChapterPage(),
      binding: DetailChapterBinding(),
    ),
  ];
}
