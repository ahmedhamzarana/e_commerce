import 'package:flutter/material.dart';
import 'package:e_commerce/utils/app_colors.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final double rating;
  final String? discountPercent; // 👈 optional

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    this.discountPercent, // 👈 nahi diya to badge nahi aayega
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bgcolor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.15),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // 👈 auto height
        children: [
          // ── Image + Badge ──
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                child: Container(
                  height: 160,
                  width: double.infinity,
                  color: Colors.grey.shade100,
                  child: Image.network(
                    image,
                    height: 160,
                                      width: double.infinity,

                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      height: 160,
                      color: Colors.grey.shade200,
                      child: const Icon(
                        Icons.image_not_supported,
                        size: 40,
                        color: Colors.white38,
                      ),
                    ),
                  ),
                ),
              ),

              // Discount badge — sirf tab show hoga jab diya ho
              if (discountPercent != null)
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "$discountPercent% OFF",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),

          // ── Details ──
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Name
                Text(
                  name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppColors.light,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 6),

                // Rating
                

                // Price + Add Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "\$$price",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),                  
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}