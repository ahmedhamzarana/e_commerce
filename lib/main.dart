
import 'package:e_commerce_app/routes/app_pages.dart';
import 'package:e_commerce_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ecomm App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashRoute,
      getPages: AppPages.pages,
    );
  }
}
