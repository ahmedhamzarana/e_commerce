import 'package:e_commerce_app/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  final controller = Get.find<AppMainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bglight,
      body: controller.pages[controller.currentIndex.value],
      bottomNavigationBar: NavigationBar(
        selectedIndex: controller.currentIndex.value,
        backgroundColor: AppColors.bglight,
        elevation: 10,
        indicatorColor: AppColors.primary.withAlpha(50),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        onDestinationSelected: (index) {
          controller.currentIndex.value = index;
        },

        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.message_outlined),
            selectedIcon: Icon(Icons.message),
            label: "Messages",
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            selectedIcon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
