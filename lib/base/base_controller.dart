import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:story_interview_app/app/app_constants.dart';
import 'package:story_interview_app/repositories/caterory_repository.dart';
import 'package:story_interview_app/repositories/chapter_repository.dart';
import 'package:story_interview_app/repositories/story_repository.dart';

abstract class BaseController extends GetxController {
  final categoryRepository = Get.find<CategoryRepository>();
  final storyRepository = Get.find<StoryRepository>();
  final chapterRepository = Get.find<ChapterRepository>();
  void showLoading() {
    EasyLoading.show(status: AppConstant.LOADING);
  }

  void dismissLoading() async {
    if (EasyLoading.isShow) {
      await EasyLoading.dismiss();
    }
  }
}
