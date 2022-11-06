import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:house_rentall_app/model/house_model.dart';
import 'package:house_rentall_app/screen/details/detail.dart';
import 'package:house_rentall_app/screen/home/home_page.dart';
import 'package:house_rentall_app/screen/home/widget/about.dart';
import 'package:house_rentall_app/screen/pages/add_products.dart';
import 'package:house_rentall_app/screen/pages/contact_us.dart';
import 'package:house_rentall_app/screen/pages/login_screen.dart';
import 'package:house_rentall_app/screen/pages/registration_screen.dart';
import 'package:house_rentall_app/screen/pages/welcome_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xFFF5F6F6),
        primaryColor: Color(0xFF811B83),
        accentColor: Color(0xFFA5019),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Color(0xFF100E34),
          ),
          bodyText1: TextStyle(
            color: Color(0xFF100E34).withOpacity(0.5),
          ),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomePage.id: (context) => HomePage(),
        House.id: (context) => House(),
        DetailPage.id: (context) => DetailPage(),
        AddProduct.id: (context) => AddProduct(),
        ContactUs.id: (context) => ContactUs(),
        AboutUs.id: (context) => AboutUs(),
      },
    );
  }
}
