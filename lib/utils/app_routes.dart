import 'package:e_commerce/views/app_main_view.dart';
import 'package:e_commerce/views/auth/splash_view.dart';
import 'package:get/get.dart';
import 'package:e_commerce/controllers/splash_controller.dart';

class AppRoutes {
  static const String splashRoute = "/";
  static const String appmainRoute = "/appmainRoute";

  static final routes = [
    GetPage(
      name: splashRoute,
      page: () => SplashView(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => SplashController());
      }),
    ),
    GetPage(
      name: appmainRoute,
      page: () => AppMainView(),
    ),
  ];
}
