import 'package:e_commerce/views/app_main_view.dart';
import 'package:e_commerce/views/auth/splash_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashRoute = "/";
  static const String appmainRoute = "/appmainRoute";

  static Map<String, WidgetBuilder> routes = {
    splashRoute: (_) => SplashView(),
    appmainRoute: (_) => AppMainView(),
  };
}
