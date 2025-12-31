import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:stylish_ecommerce/modules/cart/view/cart_screen.dart';
import 'package:stylish_ecommerce/modules/home/view/home_screen.dart';
import 'package:stylish_ecommerce/modules/search/view/search_screen.dart';
import 'package:stylish_ecommerce/modules/settings/view/settings_screen.dart';
import 'package:stylish_ecommerce/modules/wishlist/view/wishlist_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  List<Widget> bodyList = [
    HomeScreen(),
    WishlistScreen(),
    CartScreen(),
    SearchScreen(),
    SettingsScreen()
  ];
  
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffEB3030),
          selectedLabelStyle: TextStyle(
              fontSize: 12,
              color: Color(0xffEB3030),
              fontWeight: FontWeight.bold
          ),
          unselectedItemColor: Color(0xff000000),
          unselectedLabelStyle: TextStyle(
              fontSize: 12,
              color: Color(0xff000000),
              fontWeight: FontWeight.w500
          ),
          items: [
            BottomNavigationBarItem(icon: Icon(Symbols.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Symbols.favorite), label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Symbols.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Symbols.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Symbols.settings), label: 'Settings'),
          ]
      ),
    );
  }
}
