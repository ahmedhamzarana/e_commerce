import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
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

  String usernameError = "";
  String emailError = "";
  String passwordError = "";

  bool formValidate() {
    usernameError = "";
    emailError = "";
    passwordError = "";

    bool isValid = true;

    if (usernameController.text.isEmpty) {
      usernameError = "UserName is required";
      isValid = true;
    }
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
