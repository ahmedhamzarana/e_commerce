import 'package:e_commerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppMainView extends StatefulWidget {
  const AppMainView({super.key});

  @override
  State<AppMainView> createState() => _AppMainViewState();
}

class _AppMainViewState extends State<AppMainView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home Page")),
    Center(child: Text("Search Page")),
    Center(child: Text("Cart Page")),
    Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
  backgroundColor: AppColors.bgcolor,
  title: SizedBox(
    height: 45,
    child: TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: const TextStyle(color: AppColors.light),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        suffixIcon: Container(
          padding: const EdgeInsets.all(4),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: Text(
              "Search",
              style: TextStyle(color: AppColors.bgcolor),
            ),
          ),
        ),
      ),
      style: const TextStyle(color: AppColors.light),
    ),
  ),
),

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
