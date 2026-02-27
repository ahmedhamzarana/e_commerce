import 'package:e_commerce/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce/utils/app_colors.dart';
import 'package:e_commerce/widgets/productcard.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final PageController _pageController = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);

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
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                  child: Text("Search", style: TextStyle(color: AppColors.bgcolor)),
                ),
              ),
            ),
            style: const TextStyle(color: AppColors.light),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          // ── Banner + Titles ──
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
                        itemCount: provider.bannerImages.length,
                        onPageChanged: (i) => provider.currentPage = i,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                provider.bannerImages[i],
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
                      // Dots Indicator
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(provider.bannerImages.length, (i) {
                            final isActive = provider.currentPage == i;
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
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Featured Products Title
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
                const SizedBox(height: 16),
                // Category Title
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
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

          // ── Products Grid ──
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 245,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final product = provider.products[index];
                  return ProductCard(
                    image: product['image']!,
                    name: product['name']!,
                    price: product['price']!,
                    rating: double.parse(product['rating']!),
                    discountPercent: product['discount'],
                  );
                },
                childCount: provider.products.length,
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
    );
  }
}