import 'package:e_commerce_app/bindings/app_main_binding.dart';
import 'package:e_commerce_app/bindings/login_binding.dart';
import 'package:e_commerce_app/bindings/splash_binding.dart';
import 'package:e_commerce_app/routes/app_routes.dart';
import 'package:e_commerce_app/views/app_main_screen.dart';
import 'package:e_commerce_app/views/auth/login_screen.dart';
import 'package:e_commerce_app/views/auth/register_screen.dart';
import 'package:e_commerce_app/views/auth/forgot_password_screen.dart';
import 'package:e_commerce_app/views/auth/splash_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    // Splash Screen
    GetPage(
      name: '/',
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: AppRoutes.loginRoute,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: AppRoutes.registerRoute,
      page: () => const RegisterScreen(),
    ),

    GetPage(
      name: AppRoutes.forgotPasswordRoute,
      page: () => const ForgotPasswordScreen(),
    ),

    GetPage(
      name: AppRoutes.appmainRoute,
      page: () => const AppMainScreen(),
      binding: AppMainBinding(),
    ),
  ];
}
