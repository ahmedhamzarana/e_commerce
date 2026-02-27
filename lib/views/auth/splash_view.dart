import 'package:e_commerce/providers/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<SplashProvider>(context).splashTimer(context);
    return Scaffold(
      body: Center(
        child: Text(
          "TStore",
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}