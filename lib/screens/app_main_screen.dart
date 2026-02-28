import 'package:e_commerce_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Center(
      child: Text(
        "Home Page",
        style: TextStyle(
          fontSize: 18,
          color: AppColors.textPrimary,
        ),
      ),
    ),
    Center(
      child: Text(
        "Messages Page",
        style: TextStyle(
          fontSize: 18,
          color: AppColors.textPrimary,
        ),
      ),
    ),
    Center(
      child: Text(
        "Cart Page",
        style: TextStyle(
          fontSize: 18,
          color: AppColors.textPrimary,
        ),
      ),
    ),
    Center(
      child: Text(
        "Profile Page",
        style: TextStyle(
          fontSize: 18,
          color: AppColors.textPrimary,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,

      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: AppColors.bgColor,
        type: BottomNavigationBarType.fixed,
        elevation: 10,

        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textLight,
        selectedFontSize: 12,
        unselectedFontSize: 12,

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            activeIcon: Icon(Icons.message),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}