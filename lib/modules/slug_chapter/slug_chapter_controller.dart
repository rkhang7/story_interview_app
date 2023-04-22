import 'package:get/get.dart';
import 'package:story_interview_app/base/base_controller.dart';
import 'package:story_interview_app/models/entity/chapter.dart' as chapter;
import 'package:story_interview_app/models/entity/story.dart';

class SlugChapterController extends BaseController {
  final listChapter = <chapter.Chapter>[].obs;
  final listChapterLast5item = <chapter.Chapter>[].obs;
  Story story = Get.arguments as Story;

  @override
  void onInit() {
    _fetchListChapter();
    super.onInit();
  }

  void _fetchListChapter() async {
    showLoading();
    await storyRepository.getChapters(slug: story.slug ?? "").then((value) {
      listChapter.assignAll(value);
      listChapterLast5item
          .assignAll(value.length > 5 ? value.sublist(0, 5) : value);
    });

    dismissLoading();
  }
}
