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

class SlugChapterPage extends GetView<SlugChapterController> {
  const SlugChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BasePage(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildAvtTitle(),
              SizedBox(
                height: 30.h,
              ),
              _buildDescription(),
              SizedBox(
                height: 30.h,
              ),
              _buildReadStoryButton(),
              SizedBox(
                height: 30.h,
              ),
              _buildListChapter(),
              SizedBox(
                height: 30.h,
              ),
              _buildBackButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAvtTitle() {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 500.h,
            width: 500.h,
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                controller.story.poster ?? "",
                scale: 3,
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          Text(
            controller.story.title ?? "",
            style: TextStyle(
              color: Colors.black,
              fontSize: 84.sp,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildDescription() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: controller.story.description
            .map(
              (e) => Text(
                e,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: AppDimens.NORMAL_TEXT_SIZE.sp,
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildReadStoryButton() {
    return BaseButton(
      backgroundColor: Colors.blue,
      onPressed: () {},
      height: 150.h,
      borderRadius: 36,
      width: Get.width / 1.5,
      child: Text(
        "Đọc truyện",
        style: TextStyle(
          fontSize: 72.sp,
        ),
      ),
    );
  }

  Widget _buildListChapter() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Các chương mới nhất",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 64.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.LIST_CHAPTER);
                },
                child: const Text(
                  "xem tất cả",
                ),
              )
            ],
          ),
          Obx(
            () => ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                Chapter chapter = controller.listChapterLast5item[index];
                return BaseButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.shade100,
                  borderRadius: 8,
                  elevation: 0,
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
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 40.h,
                );
              },
              itemCount: controller.listChapterLast5item.length, // max: 5 item
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackButton() {
    return TextButton(
      onPressed: () {
        Get.back();
      },
      child: Text(
        "Quay lại",
        style: TextStyle(
          fontSize: 64.sp,
        ),
      ),
    );
  }
}
