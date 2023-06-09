import 'package:flutter/material.dart';
import 'package:grocery_kart/screens/cart.dart';
import 'package:grocery_kart/screens/categories.dart';
import 'package:grocery_kart/screens/home.dart';
import 'package:grocery_kart/screens/user.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': const Home(), 'title': 'Home'},
    {'page': const Categories(), 'title': 'Categories'},
    {'page': const Cart(), 'title': 'Cart'},
    {'page': const User(), 'title': 'Profile'},
  ];

  void _selectedScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedIndex]['title']),
      ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _selectedScreen,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User")
        ],
      ),
    );
  }
}
