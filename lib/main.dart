import 'package:e_commerce/controllers/splash_controller.dart';
import 'package:e_commerce/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(SplashController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: AppRoutes.splashRoute,
  getPages: AppRoutes.routes,
);
  }
}