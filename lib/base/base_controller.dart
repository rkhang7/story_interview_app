import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:story_interview_app/app/app_constants.dart';
import 'package:story_interview_app/repositories/caterory_repository.dart';

abstract class BaseController extends GetxController {
  final categoryRepository = Get.find<CategoryRepository>();

  void showLoading() {
    EasyLoading.show(status: AppConstant.LOADING);
  }

  void dismissLoading() async {
    if (EasyLoading.isShow) {
      await EasyLoading.dismiss();
    }
  }
}
