import 'package:flutter/material.dart';


//BottomButton
class BottomButton extends StatelessWidget {

  BottomButton(this.bText, this.bColour, this.onpressed);
  final bText;
  final bColour;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: bColour,
      borderRadius: BorderRadius.circular(10.0),
      child: MaterialButton(
        onPressed: onpressed,
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          bText,style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

//TextForm for mpesa Number
class NumberTextField extends StatelessWidget {
  NumberTextField(this.labelText, this.hintText, this.obsecure, this.controller,
      this.validation);

  //For each widget being created
  final String labelText;
  final String hintText;
  bool obsecure;

  //Email & Password Controller
  var controller = TextEditingController();

  //Validation Function for Email & Password
  String? Function(String?) validation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.black),
        keyboardType: TextInputType.number,
        obscureText: obsecure,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validation,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFBEBF7),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.black87, fontSize: 20),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.orange, width: 1.5),
          ),
          //enabledBorder: OutlineInputBorder(
           // borderRadius: BorderRadius.circular(10),
          //  borderSide: BorderSide(color: Color(0xFFBEBF7), width: 1.5),
         // ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.orange, width: 1.5),
          ),
        ),
      ),
    );
  }
}