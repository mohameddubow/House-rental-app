import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/categories/categories.dart';
import 'package:house_rentall_app/screen/home/widget/first_tab.dart';
import '/screen/home/widget/drawer.dart';
import 'package:house_rentall_app/screen/settings/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  int _currentIndex = 0;
  List<Widget> pages = const [
    First_tab_page(),
    Categories(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('RUBIC HOUSES'),
      ),
      drawer: CustomDrawer(),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.black,
        elevation: 30.0,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Icon(Icons.assured_workload),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
