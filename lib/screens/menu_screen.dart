import 'package:belajar/screens/booking_ticket.dart';
import 'package:belajar/screens/home_screen.dart';
import 'package:belajar/screens/list_nature.dart';
import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedTab = 0;

  List _pages = [HomeScreen(), ListNatureScreen(), BookingTiket()];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_stream), label: "Nature"),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: "booking")
        ],
      ),
    );
  }
}
