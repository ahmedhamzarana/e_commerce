import 'package:e_commerce_app/views/app_main_screen.dart';
import 'package:e_commerce_app/views/auth/forgot_password_screen.dart';
import 'package:e_commerce_app/views/auth/login_screen.dart';
import 'package:e_commerce_app/views/auth/register_screen.dart';
import 'package:e_commerce_app/views/auth/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashRoute = "/";
  static const String appmainRoute = "/appmainRoute";
  static const String loginRoute = "/loginRoute";
  static const String registerRoute = "/registerRoute";
  static const String fogotPasswordRoute = "/fogotPasswordRoute";

  static Map<String, WidgetBuilder> routes = {
    splashRoute: (_) => SplashScreen(),
    loginRoute: (_) => LoginScreen(),
    registerRoute: (_) => RegisterScreen(),
    fogotPasswordRoute: (_) => ForgotPasswordScreen(),
    appmainRoute: (_) => AppMainScreen(), 
  };
}
