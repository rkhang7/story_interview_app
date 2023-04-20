import 'package:get/get.dart';
import 'package:story_interview_app/modules/category/category_controller.dart';
import 'package:story_interview_app/modules/main/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => CategoryController(), fenix: true);
  }
}
