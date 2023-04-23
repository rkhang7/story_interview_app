import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:story_interview_app/app/app_dimens.dart';
import 'package:story_interview_app/models/entity/chapter.dart';
import 'package:story_interview_app/modules/slug_chapter/slug_chapter_controller.dart';
import 'package:story_interview_app/routes/app_routes.dart';
import 'package:story_interview_app/shared/widget/base_button.dart';
import 'package:story_interview_app/shared/widget/base_page.dart';

class ListChapterPage extends GetView<SlugChapterController> {
  const ListChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              controller.listChapter
                  .assignAll(controller.listChapter.reversed.toList());
            },
            icon: const Icon(
              Icons.sort,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: BasePage(
        child: _buildListChapter(),
      ),
    );
  }

  Widget _buildListChapter() {
    return Obx(
      () => ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          Chapter chapter = controller.listChapter.reversed.toList()[index];
          return BaseButton(
            onPressed: () {
              Get.toNamed(
                AppRoutes.DETAIL_CHAPTER,
                arguments: [
                  controller.listChapter,
                  controller.listChapter
                      .indexWhere((element) => element.id == chapter.id),
                ],
              );
            },
            backgroundColor: Colors.grey.shade100,
            borderRadius: 12,
            elevation: 0,
            height: 200.h,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  chapter.header ?? "",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppDimens.MEDIUM_TEXT_SIZE.sp,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 40.h,
          );
        },
        itemCount: controller.listChapter.length,
      ),
    );
  }
}
