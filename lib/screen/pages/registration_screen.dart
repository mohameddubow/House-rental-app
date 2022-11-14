import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:house_rentall_app/screen/home/home_page.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:fluttertoast/fluttertoast.dart';

//--------------------------******REGISTRATION SCREEN*******-----------------------------------------
class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //-------------VARIABLES----------------------
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          //-------------BACKGROUND IMAGE OF THE REGISTRATION SCREEN---------------
          Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rental6.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child:
            //-----------THE SPINNER OR THE CIRCULAR INDICATOR---------------------
            ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 48.0,
                ),
                //-----------------EMAIL TEXTFIELD--------------------
                TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //--------CAPTURE THE VALUE INPUTTED BY THE USER ON THE TEXTFIELD
                    email = value;
                  },
                  //---------EMAIL TEXTFIELD DECORATION--------------
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                //---------------PASSWORD TEXTFIELD-------------------------------
                TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  obscureText: true,
                  textAlign: TextAlign.center,
                  //--------ASSIGN AS PASSWORD THE VALUE INPUTTED BY THE USER
                  onChanged: (value) {
                    password = value;
                  },
                  //------------PASSWORD TEXTFIELD DECORATION-----------------
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                //----------THE REGISTER BUTTON----------------
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child:
                      //--------THE BUTTON----------
                      Material(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () async {
                        setState(() {
                          showSpinner = true;
                        });
                        //--------TRY/CATCH BLOCK
                        try {
                          //CREATE A NEW USER WITH THE EMAIL AND PASSWORD ENTERED
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          //----IF THE NEW USER IS NOT EQUAL TO NULL, THEN PROCEED TO THE HOMESCREEN
                          if (newUser != null) {
                            Fluttertoast.showToast(
                              msg: "Successfully Registered",
                              textColor: Colors.white,
                              backgroundColor: Colors.black,
                            );
                            Navigator.pushNamed(context, HomePage.id);
                          }
                          setState(() {
                            showSpinner = false;
                          });

                          //Implement registration functionality.
                        } catch (e) {
                          print(e);
                        }
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
