import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cleantro/Screens/home_page.dart';
import 'package:cleantro/Utility/app_color.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePageScreen(),
    Container(color: Colors.green),
    Container(color: Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().appBgColors,
      body: _pages[_selectedIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: AppColors().appIconColor,
        gapLocation: GapLocation.none,
       leftCornerRadius: 25,
        rightCornerRadius: 25,
        icons: const [
          Icons.home_outlined,
          Icons.local_laundry_service_outlined,
          Icons.chat_outlined,
          Icons.person_outline,
          Icons.mail_outline,

        ],
        onTap: _onItemTapped,
        activeIndex: _selectedIndex,
        //other params
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}


