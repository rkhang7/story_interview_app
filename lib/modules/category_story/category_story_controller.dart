import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:story_interview_app/base/base_controller.dart';
import 'package:story_interview_app/models/entity/category.dart';
import 'package:story_interview_app/models/entity/story.dart';

class CategotyStoryController extends BaseController {
  int _page = 1;
  final int _limit = 30;

  Category category = Get.arguments as Category;

  var listStory = <Story>[].obs;

  @override
  void onInit() {
    _fetchListStoryByCategoryId(page: _page);
    super.onInit();
  }

  void loadMore() {
    // if (dailyLogList.length >= _totalItem) {
    //   EasyLoading.showToast("loaded_all_data_from_system".tr);
    //   return;
    // }
    _page += 1;
    _fetchListStoryByCategoryId(page: _page);
  }

  _fetchListStoryByCategoryId({required int page}) async {
    showLoading();
    await categoryRepository
        .getStoriesByCategoryId(
            id: category.id.toString(), page: page, limit: _limit)
        .then((value) {
      if (value.isEmpty) {
        EasyLoading.showInfo("Out of data");
      } else {
        listStory.addAll(value);
      }
    });

    dismissLoading();
  }
}
