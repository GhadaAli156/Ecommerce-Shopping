import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/home_screen/product_detail_page.dart';
import 'package:shopping/home_screen/first_screen.dart';
import 'package:shopping/home_screen/setting_screen.dart';
import 'package:shopping/home_screen/wishlist_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screen = [
    FirstScreen(),
    WishlistScreen(),
    ProductDetailPage(),
    CheckoutScreen(),
    CheckoutScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.sort),
        title: Center(
            child: Image.asset(
              'assets/images/splash.JPG',
              height: 40,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.pink,
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
      body: screen[currentIndex],
    );
  }
}
