
import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/settings/settings.dart';

Drawer CustomDrawer() {
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
          onTap: () {},
          child: ListTile(
            title: Text('Add My Property'),
            leading: Icon(Icons.castle_outlined),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('My Properties'),
            leading: Icon(Icons.apartment_outlined),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Share App'),
            leading: Icon(Icons.share),
          ),
        ),

        Divider(),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Contact Us'),
            leading: Icon(Icons.phone_android),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('About Us'),
            leading: Icon(Icons.help, color: Colors.green),
          ),
        ),
      ],
    ),
  );
}
