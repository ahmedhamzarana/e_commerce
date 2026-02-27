import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  set currentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }

  final List<String> bannerImages = const [
    'https://img.freepik.com/free-photo/male-self-care-items-arrangement_23-2150347124.jpg',
    'https://img.freepik.com/free-photo/assortment-with-copy-space-hand-cream_23-2148261990.jpg',
    'https://img.freepik.com/free-photo/skincare-products_23-2150041333.jpg',
  ];

  final List<Map<String, String>> products = const [
    {
      'image': 'https://img.freepik.com/free-photo/male-self-care-items-arrangement_23-2150347124.jpg',
      'name': 'Male Self Care Items',
      'price': '29.99',
      'rating': '4.5',
      'discount': '20',
    },
    {
      'image': 'https://img.freepik.com/free-photo/male-self-care-items-arrangement_23-2150347124.jpg',
      'name': 'Nike Air Max 270 Running Shoes Special Edition',
      'price': '99.99',
      'rating': '4.0',
    },
    {
      'image': 'https://img.freepik.com/free-photo/male-self-care-items-arrangement_23-2150347124.jpg',
      'name': 'Premium Watch',
      'price': '49.99',
      'rating': '3.5',
      'discount': '10',
    },
    {
      'image': 'https://img.freepik.com/free-photo/male-self-care-items-arrangement_23-2150347124.jpg',
      'name': 'Premium Skincare Bundle Complete Set',
      'price': '79.99',
      'rating': '5.0',
    },
    {
      'image': 'https://img.freepik.com/free-photo/male-self-care-items-arrangement_23-2150347124.jpg',
      'name': 'Simple Product',
      'price': '19.99',
      'rating': '3.0',
      'discount': '5',
    },
    {
      'image': 'https://img.freepik.com/free-photo/male-self-care-items-arrangement_23-2150347124.jpg',
      'name': 'Luxury Bundle Set',
      'price': '149.99',
      'rating': '4.8',
    },
  ];
}