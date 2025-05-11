import 'package:aashpaz/screens/favorites.dart';
import 'package:aashpaz/screens/foodExplore.dart';
import 'package:aashpaz/screens/home.dart';
import 'package:aashpaz/screens/userProfile.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _pageIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const Favorites(),
    const FoodExplore(),
    const UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        showElevation: true,
        iconSize: 30,
        itemCornerRadius: 10,
        animationDuration: const Duration(milliseconds: 200),
        backgroundColor: const Color.fromARGB(255, 9, 24, 32),
        selectedIndex: _pageIndex,
        onItemSelected: (i) {
          setState(() {
            _pageIndex = i;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
                        activeColor: const Color.fromARGB(255, 199, 218, 228) ,
            icon: const Icon(
              Icons.window,
              color: Colors.white,
            ),
            title: const Text(
              'خانه',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavyBarItem(
                        activeColor: const Color.fromARGB(255, 199, 218, 228) ,

            icon: const Icon(
              Icons.add_box_rounded,
              color: Colors.white,
            ),
            title: const Text(
              'غذای جدید',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavyBarItem(
            activeColor: const Color.fromARGB(255, 199, 218, 228) ,
            icon: const Icon(
              Icons.fastfood,
              color: Colors.white,
            ),
            title: const Text(
              'بیشتر',
              style: TextStyle(color: Colors.white),
            ),
          ),
           BottomNavyBarItem(
                        activeColor: const Color.fromARGB(255, 199, 218, 228) ,

            icon: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage("afg.jpeg"),
            ),
            title: const Text(
              'پروفایل',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      
      body: _pages[_pageIndex],
    );
  }
}
