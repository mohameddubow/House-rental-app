import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/pages/login_screen.dart';
import 'package:house_rentall_app/screen/pages/registration_screen.dart';

// -----------------THE WELCOME SCREEN THAT COMES IMMEDIATELY AFTER OPENING THE APP-----------
class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      //--------THE BACKGROUND IMAGE OF THE SCREEN---------------
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rental7.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  //----------THE RUBIC APP TEXT---------------------
                  Text(
                    'Rubic App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 48.0,
              ),

              //-----------THE LOG-IN BUTTON---------------------
              //----------THE USER ONLY LOG-INS IF HE OR SHE IS ALREADY A REGISTERED USER---------
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.blueAccent.shade100,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      //-------NAVIGATES TO THE NEXT SCREEN IF VERIFIED--------------
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
              ),
              //--------------THE REGISTER BUTTON--------------------
              //-----THE USER ONLY COMES HERE IF HE OR SHE HAS NOT PREVIOUSLY REGISTERED WITH
              // THE APPLICATION
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      //---NAVIGATES TO THE REGISTRATION SCREEN AND THE USER REGISTERS----
                      Navigator.pushNamed(context, RegistrationScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
