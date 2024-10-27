import 'package:flutter/material.dart';
import 'package:shopping/home_screen/custom_search.dart';
import 'package:shopping/home_screen/custom_sort.dart';

import 'ProductCard.dart';
class WishlistScreen extends StatelessWidget {
  WishlistScreen({super.key});
  final List<Map<String, String>> products = [
    {
      'image': 'assets/images/Mask Group.png',
      'title': 'Woman Printed Kurta',
      'description': 'Matte Gunmetal Black Full Rim Rectangle Sunglasses. ',
    },
    {
      'image': 'assets/images/Mask .png',
      'title': 'XRY by Hrithik Roshan',
      'description': 'Matte Gunmetal Black Full Rim Rectangle Sunglasses.',
    },
    {
      'image': 'assets/images/Mask Group.png',
      'title': 'Woman Printed Kurta',
      'description': 'Matte Gunmetal Black Full Rim Rectangle Sunglasses. ',
    },
    {
      'image': 'assets/images/Mask Group.png',
      'title': 'Woman Printed Kurta',
      'description': 'Matte Gunmetal Black Full Rim Rectangle Sunglasses. ',
    },
    {
      'image': 'assets/images/Mask Group.png',
      'title': 'Woman Printed Kurta',
      'description': 'Matte Gunmetal Black Full Rim Rectangle Sunglasses. ',
    },
    {
      'image': 'assets/images/Mask Group.png',
      'title': 'Woman Printed Kurta',
      'description': 'Matte Gunmetal Black Full Rim Rectangle Sunglasses. ',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: ListView(
        children: [
          CustomSearch(),
          CustomSort(),
          Container(
            height: 1000,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    image: products[index]['image']!,
                    title: products[index]['title']!,
                    description: products[index]['description']!,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
