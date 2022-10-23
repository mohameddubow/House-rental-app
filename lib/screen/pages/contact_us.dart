/**import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: ContactUs(
          textColor: Colors.purpleAccent,
          taglineColor: Colors.amber,
          companyColor: Colors.black45,
          cardColor: Colors.blue,
          logo: AssetImage('images/crop.jpg'),
          email: 'adoshi26.ad@gmail.com',
          companyName: 'Abhishek Doshi',
          phoneNumber: '+91123456789',
          dividerThickness: 2,
          website: 'https://abhishekdoshi.godaddysites.com',
          githubUserName: 'AbhishekDoshi26',
          linkedinURL: 'https://www.linkedin.com/in/abhishek-doshi-520983199/',
          tagLine: 'Flutter Developer',
          twitterHandle: 'AbhishekDoshi26',
          //instagramUserName: '_abhishek_doshi',
        ),
      ),
    );
  }
}**/