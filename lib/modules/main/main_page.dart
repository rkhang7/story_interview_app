import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_interview_app/modules/category/category_page.dart';
import 'package:story_interview_app/modules/main/main_controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) => Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: [
            const Placeholder(),
            const CategoryPage(),
            const Placeholder(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey.shade700,
                width: 0.6,
              ),
            ),
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black87,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            backgroundColor: Colors.white,
            elevation: 30,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chart_bar,
                ),
                label: "Category",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person,
                ),
                label: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
