import 'package:e_commerce/utils/app_colors.dart';
import 'package:e_commerce/views/home_view.dart';
import 'package:flutter/material.dart';

class AppMainView extends StatefulWidget {
  const AppMainView({super.key});

  @override
  State<AppMainView> createState() => _AppMainViewState();
}

class _AppMainViewState extends State<AppMainView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    Center(child: Text("Search Page")),
    Center(child: Text("Cart Page")),
    Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
     

      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: AppColors.bgcolor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.light,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
