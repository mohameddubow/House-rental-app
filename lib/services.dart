import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserManagement{
  authorizeAccess(BuildContext context){
    FirebaseAuth.instance.currentUser.then((user){
    FirebaseFirestore.instance.collection('/users').where('uid',isEqualTo: user.uid).get().then(docs){
    if(docs.documents[0].exists) {
      if (docs.documents[0].data['role'] == 'admin') {
        Navigator.pushNamed(context, AddProperty.id);
      }
      else {
        print('Not Authorized');
      }
    }
    };
    },
    );
  }
}


