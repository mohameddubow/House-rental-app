import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static String id = 'about_us_screen';
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('About Us'),
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Developer details',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Developer:     MOHAMED AHMED DUBOW'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Phone Number:   0716788723'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Email:     Demahomdemha10@gmail.com'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Country:       KENYA'),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Rubic Homes hosts different categories of rental houses in Kenya and shows them to you in one place.It solves the tedious process of manual rental seeking.Through the click of a button,it connects landlords and tenants seeking rental houses.  Find your dream home with Rubic Homes. Easy, Convenient and fast',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(42.0),
                child: Text(
                  '@2022 Rubic Homes.All Rights Reserved.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
