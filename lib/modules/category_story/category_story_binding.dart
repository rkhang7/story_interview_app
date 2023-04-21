import 'package:get/get.dart';
import 'package:story_interview_app/modules/category_story/category_story_controller.dart';

class CategoryStoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategotyStoryController());
  }
}
