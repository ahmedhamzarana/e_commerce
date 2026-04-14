import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isRemember = false;
  bool isObsecure = false;

  void toggleRemember() {
    isRemember = !isRemember;
    update();
  }
  
  void toggleObsecure() {
    isObsecure = !isObsecure;
    update();
  }
}
