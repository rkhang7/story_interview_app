import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:story_interview_app/repositories/caterory_repository.dart';
import 'package:story_interview_app/repositories/story_repository.dart';
import 'package:story_interview_app/routes/app_routes.dart';

import 'routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configLoading();
  await initialRepositories();
  runApp(const MyApp());
}

Future<void> initialRepositories() async {
  Get.put(CategoryRepository());
  Get.put(StoryRepository());

  // DBService, ...
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData.fromWindow(WidgetsBinding.instance.window),
      child: ScreenUtilInit(
        designSize: const Size(1440, 3040),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: AppPages.getPages,
          initialRoute: AppRoutes.MAIN,
          builder: (context, child) {
            child = EasyLoading.init()(context, child);
            return child;
          },
        ),
      ),
    );
  }
}

void configLoading() {
  // EasyLoading.instance
  //   ..displayDuration = const Duration(milliseconds: 2000)
  //   ..indicatorType = EasyLoadingIndicatorType.cubeGrid;
  EasyLoading.instance
    ..displayDuration = const Duration(seconds: 3)
    ..indicatorType = EasyLoadingIndicatorType.cubeGrid
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.blue.shade900
    ..backgroundColor = Colors.blueGrey
    ..indicatorColor = Colors.white
    ..userInteractions = false
    ..textColor = Colors.white
    ..maskColor = Colors.grey.withOpacity(0.5)
    ..userInteractions = true
    ..maskType = EasyLoadingMaskType.custom;
}
