import 'package:e_commerce_app/views/home_screen.dart';
import 'package:e_commerce_app/views/messages_screen.dart';
import 'package:e_commerce_app/views/cart_screen.dart';
import 'package:e_commerce_app/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMainController extends GetxController {
  var currentIndex = 0.obs;
  final List<Widget> _pages = const [
    HomeScreen(),
    MessagesScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  List<Widget> get pages => _pages;

  // This controller can be used to manage the state of the main screen if needed
}
