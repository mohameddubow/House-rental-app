import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:house_rentall_app/model/house_model.dart';
import 'package:house_rentall_app/screen/details/detail.dart';
import 'package:house_rentall_app/screen/home/home_page.dart';
import 'package:house_rentall_app/screen/home/widget/about.dart';
import 'package:house_rentall_app/screen/home/widget/detail_home.dart';
import 'package:house_rentall_app/screen/pages/add_properties.dart';
import 'package:house_rentall_app/screen/pages/contact_us.dart';
import 'package:house_rentall_app/screen/pages/login_screen.dart';
import 'package:house_rentall_app/screen/pages/mpesanumber.dart';
import 'package:house_rentall_app/screen/pages/registration_screen.dart';
import 'package:house_rentall_app/screen/pages/welcome_screen.dart';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';
import 'package:house_rentall_app/screen/pages/receipt_screen.dart';

String kConsumerKey = "fe3iY8iLijqGbWwnJjZ0FQaqAOOmgT4x";
String kConsumerSecret = "HQuYU8v5am6LcO73";

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //For MPESA
  MpesaFlutterPlugin.setConsumerKey(kConsumerKey);
  MpesaFlutterPlugin.setConsumerSecret(kConsumerSecret);

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
        LuxuryHomes.id: (context) => LuxuryHomes(),
        WeddingHomes.id: (context) => WeddingHomes(),
        SingleFamilyHomes.id: (context) => SingleFamilyHomes(),
        UniversityHotels.id: (context) => UniversityHotels(),
        BedSitter.id: (context) => BedSitter(),
        DetailPage.id: (context) => DetailPage(),
        AddProperty.id: (context) => AddProperty(),
        ContactUs.id: (context) => ContactUs(),
        AboutUs.id: (context) => AboutUs(),
        DetailHome.id: (context) => DetailHome(),
        MpesaNumberScreen.id: (context) => MpesaNumberScreen(),
        ReceiptScreen.id:(context)=> ReceiptScreen(),
      },
    );
  }
}
