import 'package:e_commerce_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  void splashTimer(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    if (context.mounted) {
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.loginRoute,
      );
    }
  }
}