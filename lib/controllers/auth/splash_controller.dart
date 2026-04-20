// lib/controllers/auth/splash_controller.dart

import 'package:e_commerce_app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print("DEBUG: SplashController Initialized"); // Check karne ke liye
    splashTimer();
  }

  void splashTimer() {
    Future.delayed(const Duration(seconds: 3), () {
      print(
        "DEBUG: Navigating to Login...",
      ); // Agar yeh print ho raha hai toh timer theek hai
      Get.offAllNamed(
        AppRoutes.loginRoute,
      ); // offNamed ki jagah offAllNamed try karein
    });
  }
}
