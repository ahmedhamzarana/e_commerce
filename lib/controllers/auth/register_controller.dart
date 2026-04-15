import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  var isObsecure = false.obs;

  void toggleObsecure() {
    isObsecure.value = !isObsecure.value;
    update();
  }

  bool validateInputs() {
    bool isValid = true;
    if (nameController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter your name",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      isValid = false;
    }

    if (emailController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please enter your email",
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
    }

    if (confirmPasswordController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please confirm your password",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      isValid = false;
    }

    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Please fill in all fields",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return isValid;
    }

    if (passwordController.text != confirmPasswordController.text) {
      Get.snackbar(
        "Error",
        "Passwords do not match",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return isValid;
    }

    return isValid;
  }
}