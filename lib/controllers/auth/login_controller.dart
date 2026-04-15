import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isRemember = false.obs;
  var isObsecure = true.obs;

  void toggleRemember() {
    isRemember.value = !isRemember.value;
  }
  
  void toggleObsecure() {
    isObsecure.value = !isObsecure.value;
  }
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final passwordRegex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  bool validateInputs() {
    bool isValid = true;
    if (emailController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter your email",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      isValid = false;
    } else if (!emailRegex.hasMatch(emailController.text)) {
      Get.snackbar(
        "Error",
        "Please enter a valid email",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      isValid = false;
    }

    if (passwordController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter your password",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      isValid = false;
    } else if (!passwordRegex.hasMatch(passwordController.text)) {
      Get.snackbar(
        "Error",
        "Password must be at least 8 characters long and contain both letters and numbers",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      isValid = false;
    }

    return isValid;
  }
  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}