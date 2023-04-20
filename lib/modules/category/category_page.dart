import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:story_interview_app/app/app_dimens.dart';
import 'package:story_interview_app/models/entity/category.dart';
import 'package:story_interview_app/modules/category/category_controller.dart';
import 'package:story_interview_app/shared/widget/base_page.dart';

class CategoryPage extends GetView<CategoryController> {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BasePage(
          child: Obx(
        () => controller.listCategory.isNotEmpty
            ? GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30.h,
                  mainAxisSpacing: 30.h,
                  childAspectRatio: 10.h,
                ),
                itemCount: controller.listCategory.length,
                itemBuilder: (BuildContext context, int index) {
                  Category category = controller.listCategory[index];
                  return _buildItem(category);
                },
              )
            : const Center(
                child: Text("Not found!"),
              ),
      )),
    );
  }

  Widget _buildItem(Category category) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        category.name ?? "",
        style: TextStyle(
          color: Colors.black,
          fontSize: AppDimens.LARGE_TEXT_SIZE.sp,
        ),
      ),
    );
  }
}
