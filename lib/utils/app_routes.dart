import 'package:e_commerce_app/screens/auth/login_screen.dart';
import 'package:e_commerce_app/screens/auth/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashRoute = "/";
  static const String appmainRoute = "/appmainRoute";
  static const String loginRoute = "/loginRoute";
  static const String registerRoute = "/registerRoute";

  static Map<String, WidgetBuilder> routes = {
    splashRoute: (_) => SplashScreen(),
    // appmainRoute: (_) => AppMainScreen(),
    loginRoute: (_) => LoginScreen(),
    // registerRoute: (_) => RegisterScreen(),
  };
}
