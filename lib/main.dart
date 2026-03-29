import 'package:e_commerce_app/providers/auth/forgot_password_provider.dart';
import 'package:e_commerce_app/providers/auth/login_provider.dart';
import 'package:e_commerce_app/providers/auth/register_provider.dart';
import 'package:e_commerce_app/providers/auth/splash_provider.dart';
import 'package:e_commerce_app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => RegisterProvider()),
        ChangeNotifierProvider(create: (_) => ForgotPasswordProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecomm App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashRoute,
      routes: AppRoutes.routes,
    );
  }
}
