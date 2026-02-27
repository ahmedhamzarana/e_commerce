import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool obscureText = true;
  bool isRemembered = false;
  bool isLoading = false;

  void toggleObscure() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void toggleRemembered() {
    isRemembered = !isRemembered;
    notifyListeners();
  }

  String emailError = "";
  String passwordError = "";

  bool formValidate() {
    emailError = "";
    passwordError = "";

    bool isValid = true;

    if (emailController.text.isEmpty) {
      emailError = "Email is required";
      isValid = true;
    }
    if (passwordController.text.isEmpty) {
      passwordError = "Password is required";
      isValid = true;
    }

    notifyListeners();
    return isValid;
  }
}
