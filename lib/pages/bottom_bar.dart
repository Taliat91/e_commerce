import 'package:e_commerce/pages/about_pg.dart';
import 'package:e_commerce/pages/cart_pg.dart';
import 'package:e_commerce/pages/favorite_pg.dart';
import 'package:e_commerce/pages/home_pg.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar  extends StatefulWidget {
   
   const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {

   int _pageIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _pageIndex = index;
    });
  }

  final List<Widget> pages = [
    const HomePage(),
    const FavoritePage(),
    const CartPage(),
    const AboutPage(),
  ];

  // void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: pages[_pageIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                  GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Favorite',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Person',
                ),
              ],
              selectedIndex: _pageIndex,
              onTabChange: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );


  }
}