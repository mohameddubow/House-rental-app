import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:house_rentall_app/screen/home/home_page.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:fluttertoast/fluttertoast.dart';

//------------------------LOG IN SCREEN-----------------------------------------
class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //------------VARIABLES--------------------
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          //------------BACKGROUND IMAGE OF THE LOG-IN PAGE------------------------
          Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rental1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child:
            //----------------SPINNER OR THE CIRCULAR PROGRESS INDICATOR--------------------
            ModalProgressHUD(
          inAsyncCall: showSpinner,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 200.0,
                  //child: Image.asset('images/logo.png'),
                ),
                //---------------EMAIL TEXTFIELD---------------------------------
                TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  autofocus: false,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  validator: (value) {
                    //--------IF THE TEXTFIELD VALUE IS EMPTY, AN ERROR IS DISPLAYED
                    if (value!.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "Please enter your email",
                        fontSize: 16.0,
                        textColor: Colors.white,
                        backgroundColor: Colors.black,
                      );
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return ("Please enter a valid email");
                    }
                    return null;
                  },
                  //------THE EMAIL IS EQUAL TO THE VALUE INPUT BY THE USER IN THE TEXTFIELD
                  onChanged: (value) {
                    email = value;
                  },
                  //---------TEXTBOX DECORATION-------------------
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: 'Enter your email',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),

                //--------------------PASSWORD TEXTFIELD---------------------------------
                TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  autofocus: false,
                  cursorColor: Colors.black,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  validator: (value) {
                    RegExp regex = RegExp(r'^.{6,}$');
                    //--------IF THE USER DOESNT INPUT A PASSWORD, AN ERROR IS DISPLAYED
                    if (value!.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "Please enter you password",
                        fontSize: 16.0,
                        textColor: Colors.white,
                        backgroundColor: Colors.black,
                      );
                    }

                    if (!regex.hasMatch(value)) {
                      return ("please enter valid password (min 6 characters)");
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    password = value;
                  },
                  //--------------TEXTBOX DECORATION---------------------
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your password.',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),

                //------------------------THE LOG-IN BUTTON----------------------------------
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child:
                      //------------THE BUTTON-----------------------
                      Material(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () async {
                        setState(() {
                          showSpinner = true;
                        });
                        try {
                          // IF THE USER IS VERIFIED, THEN SHOW A 'LOGIN SUCCESSFUL' MESSAGE
                          final user = await _auth.signInWithEmailAndPassword(
                              email: email, password: password);
                          //------THE MESSAGE DISPLAYED--------------------
                          Fluttertoast.showToast(
                            msg: "Login Successful",
                            fontSize: 16.0,
                            textColor: Colors.white,
                            backgroundColor: Colors.black,
                          );
                          //IF USER IS NOT EQUAL TO NULL, WHICH MEANS THE USER IS VERIFIED,
                          // THEN WE PROCEED TO THE NEXT PAGE WHICH IS THE HOME PAGE.
                          if (user != null) {
                            Navigator.pushNamed(context, HomePage.id);
                          }
                          setState(() {
                            showSpinner = false;
                          });
                        } on FirebaseException catch (e) {
                          //--------THE ERRORS------------
                          if (e.code == 'user not found' ||
                              e.code == 'wrong-password') {
                            //---------MESSAGE DISPLAYED--------------------
                            Fluttertoast.showToast(
                              msg: "Incorrect username or password",
                              textColor: Colors.black,
                              backgroundColor: Colors.white,
                            );
                          }
                        }
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Log In',
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
