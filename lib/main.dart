import 'package:e_commerce_app/providers/login_provider.dart';
import 'package:e_commerce_app/providers/register_provider.dart';
import 'package:e_commerce_app/providers/splash_provider.dart';
import 'package:e_commerce_app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(

    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> SplashProvider()),
      ChangeNotifierProvider(create: (_)=> LoginProvider()),
      ChangeNotifierProvider(create: (_)=> RegisterProvider()),
    ],child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: AppRoutes.splashRoute,       
      routes: AppRoutes.routes,
    );
  }
}

