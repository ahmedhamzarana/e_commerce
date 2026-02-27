import 'package:e_commerce/providers/home_provider.dart';
import 'package:e_commerce/providers/splash_provider.dart';
import 'package:e_commerce/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {

    runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context)=>  SplashProvider()),
        ChangeNotifierProvider(create: (context)=>  HomeProvider()),
      ],child: MyApp(),)
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: AppRoutes.splashRoute,
  routes: AppRoutes.routes,
);
  }
}