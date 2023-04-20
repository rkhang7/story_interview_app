import 'package:get/get.dart';
import 'package:story_interview_app/base/base_controller.dart';
import 'package:story_interview_app/models/entity/category.dart';

class CategoryController extends BaseController {
  var listCategory = <Category>[].obs;
  @override
  void onInit() {
    fetchListCategory();
    super.onInit();
  }

  void fetchListCategory() async {
    showLoading();
    await categoryRepository.getCategories().then((value) {
      if (value.isNotEmpty) {
        listCategory.assignAll(value);
      }
    });

    dismissLoading();
  }
}
