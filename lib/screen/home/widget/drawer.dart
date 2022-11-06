import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/home/home_page.dart';
import 'package:house_rentall_app/screen/home/widget/about.dart';
import 'package:house_rentall_app/screen/home/widget/first_tab.dart';
import 'package:house_rentall_app/screen/pages/add_products.dart';
import 'package:house_rentall_app/screen/pages/contact_us.dart';
//import 'package:house_rentall_app/screen/settings/settings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Mohammed Dubow'),
            accountEmail: Text('demahomdemha10@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.red),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, HomePage.id);

            },
            child: ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home,color: Colors.blueAccent,),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AddProduct.id);
            },
            child: ListTile(
              title: Text('Add My Property'),
              leading: Icon(Icons.castle_outlined,color: Colors.blue,),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ContactUs.id);
            },
            child: ListTile(
              title: Text('Contact Us'),
              leading: Icon(Icons.phone_android,color: Colors.redAccent,),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AboutUs.id);
            },
            child: ListTile(
              title: Text('About Us'),
              leading: Icon(Icons.help, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
