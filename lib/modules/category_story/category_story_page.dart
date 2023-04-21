import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:story_interview_app/app/app_dimens.dart';
import 'package:story_interview_app/models/entity/story.dart';
import 'package:story_interview_app/modules/category_story/category_story_controller.dart';
import 'package:story_interview_app/shared/func/utils.dart';
import 'package:story_interview_app/shared/widget/base_page.dart';

class CategoryStoryPage extends GetView<CategotyStoryController> {
  const CategoryStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          controller.category.name ?? "",
          style: TextStyle(
            fontSize: AppDimens.LARGE_TEXT_SIZE.sp,
            color: Colors.blue,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: BasePage(
        child: Container(
          child: Obx(
            () => LazyLoadScrollView(
              onEndOfPage: controller.loadMore,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: controller.listStory.length,
                itemBuilder: (_, index) {
                  Story story = controller.listStory[index];
                  return _buildItem(story);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 50.h,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItem(Story story) {
    return Container(
      color: Colors.grey.shade200,
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 300.h,
              width: 300.w,
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  story.poster ?? "",
                  scale: 3,
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          // SizedBox(
          //   width: 30.w,
          // ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  story.title ?? "",
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: 72.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  story.author ?? "",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(Utils.convertDateTime(story.updatedDate ?? ""))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
