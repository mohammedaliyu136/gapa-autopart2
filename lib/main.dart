import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:citester/controller/splash_controller.dart';
import 'package:citester/controller/theme_controller.dart';
import 'package:citester/helper/route_helper.dart';
import 'package:citester/util/app_constants.dart';
import 'package:citester/theme/dark_theme.dart';
import 'package:citester/theme/light_theme.dart';
import 'package:get/get.dart';
import 'helper/get_di.dart' as di;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void _route() {}

  @override
  Widget build(BuildContext context) {
    if(GetPlatform.isWeb) {
      Get.find<SplashController>().initSharedData();
      _route();
    }

    return GetBuilder<ThemeController>(builder: (themeController) {
      return GetBuilder<SplashController>(builder: (splashController) {
        return GetMaterialApp(
          title: AppConstants.APP_NAME,
          debugShowCheckedModeBanner: false,
          navigatorKey: Get.key,
          scrollBehavior: MaterialScrollBehavior().copyWith(
            dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
          ),
          locale: Locale('en', 'US'),
          theme: themeController.darkTheme ? dark : light,
          initialRoute: RouteHelper.getSplashRoute(),
          getPages: RouteHelper.routes,
          defaultTransition: Transition.topLevel,
          transitionDuration: Duration(milliseconds: 500),
        );
      });
    });
  }
}