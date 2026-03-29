import 'package:e_commerce_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200, // Your fixed height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppColors.secondry.withAlpha(100), // Modern 0-255 Alpha
            blurRadius: 10,
            offset: const Offset(4, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
            // Image Area (Takes 60% of height)
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: Colors.blueGrey.withAlpha(20),
                child: Image.network(
                  "https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp",
                ),
              ),
            ),
            // Text Area (Takes 40% of height)
            const Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Product Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text("\$99.00", style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
