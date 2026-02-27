import 'dart:ui';
import 'package:e_commerce/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    final Color borderColor = Colors.white.withAlpha(102);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.4],
            colors: [Color.fromARGB(255, 151, 53, 17), Color(0xFF000000)],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 25),

                /// EMAIL FIELD
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: TextField(
                      controller: loginProvider.emailController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        hintStyle: TextStyle(color: Colors.white.withAlpha(128)),
                        filled: true,
                        fillColor: Colors.white.withAlpha(25),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: borderColor, width: 1.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: borderColor, width: 1.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                /// PASSWORD FIELD
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: TextField(
                      controller: loginProvider.passwordController,
                      obscureText: loginProvider.obscureText,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.white.withAlpha(128)),
                        filled: true,
                        fillColor: Colors.white.withAlpha(25),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: borderColor, width: 1.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: borderColor, width: 1.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        suffixIcon: IconButton(
                          icon: Icon(
                            loginProvider.obscureText ? Icons.visibility : Icons.visibility_off,
                            color: Colors.white.withAlpha(178),
                          ),
                          onPressed: () {
                            loginProvider.toggleObscure();
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                /// REMEMBER + FORGOT
               Row(
  children: [
    SizedBox(
      height: 24,
      width: 24,
      child: Checkbox(
        value: loginProvider.isRemembered,
        side: const BorderSide(color: Colors.white),
        activeColor: const Color(0xFFE6501B),
        onChanged: (val) => loginProvider.toggleRemembered(),
      ),
    ),
    const SizedBox(width: 8),
    const Text(
      "Remember Me",
      style: TextStyle(color: Colors.white, fontSize: 14),
    ),
    const Spacer(),
    const Text(
      "Forgot Password?",
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    ),
  ],
),
                const SizedBox(height: 35),

                /// LOGIN BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE6501B),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward, size: 18),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                /// SOCIAL ICONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withAlpha(25),
                            border: Border.all(color: Colors.white.withAlpha(51)),
                          ),
                          child: Image.asset(
                            "google.png",
                            height: 50,
                            width: 50,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withAlpha(25),
                            border: Border.all(color: Colors.white.withAlpha(51)),
                          ),
                          child: Image.asset(
                            "apple.png",
                            height: 50,
                            width: 50,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                /// SIGNUP TEXT
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Do you have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Signup",
                      style: TextStyle(
                        color: Color(0xFFE6501B),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}