import 'package:get/get.dart';
import 'package:story_interview_app/modules/slug_chapter/slug_chapter_controller.dart';

class SlugChapterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SlugChapterController());
  }
}
