/**import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '/screen/home/home_page.dart';

class GoogleBar extends StatefulWidget {
  const GoogleBar({Key? key}) : super(key: key);

  @override
  State<GoogleBar> createState() => _GoogleBarState();
}

class _GoogleBarState extends State<GoogleBar> {
  //int _currentIndex = 0;
  List<Widget> body = [
    Text(
      'Home',
    ),
    Text(
      'Like',
    ),
    Text(
      'Search',
    ),
    Text(
      'User',
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10,
        ),
        child: GNav(
            //curve: Curves.bounceInOut,
            //duration: Duration(milliseconds: 900),
          selectedIndex: currentIndex,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.greenAccent,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: EdgeInsets.all(12),
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(
                icon: Icons.assured_workload,
                text: 'Categories',
              ),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
            //selectedIndex: _currentIndex,
    onTabChange: (index) {
    pageController.animateToPage(index,
    duration: Duration(milliseconds: 600),
    curve: Curves.fastOutSlowIn);
    },
            ),
      ),
    );
  }
}**/
