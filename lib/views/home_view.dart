import 'package:e_commerce/utils/app_colors.dart';
import 'package:e_commerce/widgets/productcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final RxInt _currentPage = 0.obs;
  final PageController _pageController = PageController(viewportFraction: 1);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: AppColors.bgcolor,
        elevation: 0,
        title: SizedBox(
          height: 45,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: const TextStyle(color: AppColors.light),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 0,
              ),
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
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
      body: CustomScrollView(
        slivers: [

          // ── Banner + Title ── (scroll ke saath)
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                // Banner Slider
                SizedBox(
                  height: 170,
                  child: Stack(
                    children: [
                      PageView.builder(
                        controller: _pageController,
                        itemCount: bannerImages.length,
                        onPageChanged: (i) => _currentPage.value = i,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              right: 5,
                              left: 5,
                              ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                bannerImages[i],
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: const Icon(
                                    Icons.image_not_supported,
                                    size: 40,
                                    color: Colors.white38,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),

                      // Dots
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(bannerImages.length, (i) {
                              final isActive = _currentPage.value == i;
                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.symmetric(horizontal: 3),
                                height: 7,
                                width: isActive ? 20 : 7,
                                decoration: BoxDecoration(
                                  color: isActive
                                      ? AppColors.primary
                                      : Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Section Title
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Featured Products",
                        style: TextStyle(
                          color: AppColors.light,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
              ],
            ),
          ),

          // ── GridView ──
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ProductCard(
                    image: products[index]['image']!,
                    name: products[index]['name']!,
                    price: products[index]['price']!,
                    rating: double.parse(products[index]['rating']!),
                    discountPercent: products[index]['discount'],
                  );
                },
                childCount: products.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 245, // 👈 card height — apni need se adjust karo
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
    );
  }
}