import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:story_interview_app/app/app_dimens.dart';
import 'package:story_interview_app/modules/detail_chapter/detail_chapter_controller.dart';
import 'package:story_interview_app/shared/func/utils.dart';
import 'package:story_interview_app/shared/widget/base_page.dart';

class DetailChapterPage extends GetView<DetailChapterController> {
  const DetailChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BasePage(
        child: Obx(
          () => PageView.builder(
            itemBuilder: (context, index) {
              return _buildItem(
                header: controller.listChapter[index].header ?? "",
                body: controller.listChapter[index].body == null
                    ? ""
                    : (controller.listChapter[index].body)!.first,
              );
            },
            itemCount: controller.listChapter.length,
            controller: controller.pageController,
          ),
        ),
      ),
    );
  }

  Widget _buildItem({required String header, required String body}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              header,
              style: TextStyle(
                color: Colors.green.shade800,
                fontSize: AppDimens.LARGE_TEXT_SIZE.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Utils.convertHTMLtoWidget(body),
          ],
        ),
      ),
    );
  }
}
