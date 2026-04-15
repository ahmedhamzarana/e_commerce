import 'package:e_commerce_app/bindings/splash_binding.dart';
import 'package:e_commerce_app/routes/app_routes.dart';
import 'package:e_commerce_app/views/auth/splash_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    // Splash Screen
    GetPage(
      name: AppRoutes.splashRoute,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
  ];
}
