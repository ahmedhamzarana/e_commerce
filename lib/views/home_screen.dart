import 'package:e_commerce_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.secondry,
        elevation: 0,
        title: const Text(
          "Shopping App",
          style: TextStyle(
            color: Color.fromARGB(255, 187, 73, 12),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextField(
            cursorColor: AppColors.primary,
            style: const TextStyle(color: AppColors.primary),
            decoration: InputDecoration(
              hintText: "Search products",
              hintStyle: const TextStyle(color: AppColors.primary),
              filled: true,
              fillColor: AppColors.bglight.withAlpha(50),
              prefixIcon: const Icon(Icons.search, color: AppColors.primary),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),

      body: Container(
        color: AppColors.bglight,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                // Banner
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.primary, AppColors.secondry],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/logo.avif", fit: BoxFit.cover),
                  ),
                ),

                const SizedBox(height: 10),

                // Grid
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/product.png",
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Product Name",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          const Text("\$99.99"),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
