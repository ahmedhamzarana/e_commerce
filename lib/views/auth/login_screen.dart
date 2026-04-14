import 'package:e_commerce_app/controllers/auth/login_controller.dart';
import 'package:e_commerce_app/utils/app_colors.dart';
import 'package:e_commerce_app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.5],
            colors: [AppColors.primary, AppColors.secondry],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const Icon(
                Icons.shopping_cart_outlined,
                size: 80,
                color: AppColors.bglight,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: loginController.emailController,
                    style: TextStyle(color: AppColors.bglight),
                    cursorColor: AppColors.bglight,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: AppColors.bglight),
                      filled: true,
                      fillColor: AppColors.bglight.withAlpha(25),
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: AppColors.bglight,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.info,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.info,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.info,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextField(
                    controller: loginController.passwordController,
                    obscureText: loginController.isObsecure,
                    cursorColor: AppColors.bglight,
                    style: TextStyle(color: AppColors.bglight),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: AppColors.bglight),
                      filled: true,
                      fillColor: AppColors.bglight.withAlpha(25),
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: AppColors.bglight,
                      ),
                      suffixIcon: GestureDetector(
                       onTap: () => loginController.toggleObsecure(),
                        child: Icon(
                          loginController.isObsecure
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: AppColors.bglight,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.info,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.info,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.info,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),

                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: AppColors.primary,
                            value: loginController.isRemember,
                            onChanged: (value) => loginController.toggleRemember(),
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(color: AppColors.bglight),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(
                          context,
                          AppRoutes.fogotPasswordRoute,
                        ),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: AppColors.bglight),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.bglight,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () =>
                          Get.offAllNamed(AppRoutes.appmainRoute),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Login"),
                          SizedBox(width: 7),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont Have An Account",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 4),
                      GestureDetector(
                        onTap: () => Get.toNamed(AppRoutes.registerRoute),
                        child: Text(
                          "Register",
                          style: TextStyle(color: AppColors.primary),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(width: 4),
                      Text("OR", style: TextStyle(color: AppColors.bglight)),
                      SizedBox(width: 4),
                      Expanded(child: Divider()),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
