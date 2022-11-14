import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/home/home_page.dart';
import 'package:house_rentall_app/screen/home/widget/about.dart';
import 'package:house_rentall_app/screen/pages/add_properties.dart';
import 'package:house_rentall_app/screen/pages/contact_us.dart';
import 'package:house_rentall_app/services.dart';

//----------------------------------------------------------------------------------------
//THIS IS THE CODE FOR THE CUSTOM DRAWER OR THE THREE SMALL LINES UP AT THE HOMEPAGE THAT HAVE EXTRA INFO

class CustomDrawer extends StatelessWidget {
  //-----------------------------------------------------------------
  //THE CONSTRUCTOR CLASS
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  //-------------------------------------------------------------------------------------
  //THE BODY OF THE DRAWER
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          //--------------------------------------------------------------------------
          //LIST OF ITEMS IN THE DRAWER
          //---------------IMAGE LOGO------------------------------------------
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo_foreground.png'),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          //----------------------HOME---------------------------------
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, HomePage.id);
            },
            child: ListTile(
              title: Text('Home'),
              leading: Icon(
                Icons.home,
                color: Colors.blueAccent,
              ),
            ),
          ),
          //----------------------ADD MY PROPERTY------------------------
          InkWell(
            onTap: () {
              UserManagement().authorizeAccess(context);
            },
            child: ListTile(
              title: Text('Add My Property'),
              leading: Icon(
                Icons.castle_outlined,
                color: Colors.blue,
              ),
            ),
          ),
          //------------------------CONTACT US---------------------------
          Divider(
            height: 15,
            thickness: 1,
            color: Colors.black26,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ContactUs.id);
            },
            child: ListTile(
              title: Text('Contact Us'),
              leading: Icon(
                Icons.phone_android,
                color: Colors.redAccent,
              ),
            ),
          ),
          //------------------------------ABOUT US--------------------------------
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
