import 'package:get/get.dart';

class SplashController extends GetxController {
   void splashTimer(context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed("/login");
    });
}