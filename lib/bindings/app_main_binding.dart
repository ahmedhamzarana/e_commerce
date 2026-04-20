import 'package:e_commerce_app/controllers/home_controller.dart';
import 'package:get/get.dart';

class AppMainBinding extends Bindings{
  @override
  void dependencies() {
    // AppMainController ko yahan initialize karna chahiye
    Get.put<AppMainController>(AppMainController());
  }
}