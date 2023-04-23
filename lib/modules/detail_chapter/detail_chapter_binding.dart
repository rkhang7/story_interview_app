import 'package:get/get.dart';
import 'package:story_interview_app/modules/detail_chapter/detail_chapter_controller.dart';

class DetailChapterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailChapterController());
  }
}
