import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_interview_app/base/base_controller.dart';
import 'package:story_interview_app/models/entity/chapter.dart';

class DetailChapterController extends BaseController {
  final listChapter = <Chapter>[].obs;
  final pageController = PageController(initialPage: Get.arguments[1]);

  @override
  void onInit() {
    _initBodyChapter();
    super.onInit();
  }

  Future<List<String>> fetchChapterById({required String id}) async {
    await chapterRepository.getChapterById(id: id).then((value) {
      return value.body;
    });

    return [];
  }

  void _initBodyChapter() async {
    listChapter.value = Get.arguments[0] as List<Chapter>;
    showLoading();
    for (Chapter chapter in listChapter) {
      await chapterRepository
          .getChapterById(id: chapter.id.toString())
          .then((value) {
        chapter.body = value.body;
        listChapter.refresh();
      });
    }
    dismissLoading();
  }
}
