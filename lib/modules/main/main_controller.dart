import 'package:get/get.dart';
import 'package:story_interview_app/base/base_controller.dart';
import 'package:story_interview_app/models/entity/category.dart';

class MainController extends BaseController {
  var tabIndex = 1;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
