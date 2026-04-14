import 'package:e_commerce_app/utils/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void splashTimer() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.loginRoute);
    });
  }
}
