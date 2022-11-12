import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/categories/categories.dart';
import 'package:house_rentall_app/screen/home/widget/first_tab.dart';
import '/screen/home/widget/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  static String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //----------------CREATES A FIREBASE INSTANCE AND ASSIGN IT TO '_auth' object---------------------
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  //--------THIS method CHECKS WHETHER THEIR IS A CURRENT USER SIGNED IN-----------------
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  int _currentIndex = 0;
  //--------------LIST OF TABS-----------------------------
  List<Widget> pages = [
    First_tab_page(),
    Categories(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      //--------------APPBAR-----------------------
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('RUBIC HOUSES'),
      ),
      //-------------THE DRAWER----------------------------------------
      drawer: CustomDrawer(),
      //--------------------THE BODY TOGGLES ACCORDING TO WHICH TAB THE USER TOUCHES-----------
      body: pages[_currentIndex],
      //-----------------------BOTTOM NAVIGATION BAR-----------------------------------
      //-------------THIS DISPLAYS A BOTTOM NAVIGATION BAR WITH THREE ITEMS----------------------
      bottomNavigationBar: BottomNavigationBar(
        elevation: 30.0,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        //------------------------THE ITEMS/TABS---------------------------
        items: [
          //-----------THE HOME TAB----------------------------------------
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          //------------THE CATEGORIES TAB---------------------------------
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Icon(Icons.assured_workload),
          ),
        ],
      ),
    );
  }
}
