import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:house_rentall_app/screen/pages/add_properties.dart';

class UserManagement {
  authorizeAccess(BuildContext context) async {
    var currentUserId = FirebaseAuth.instance.currentUser!.uid;
    var usersRef = FirebaseFirestore.instance.collection('/users');

    usersRef.where('uid', isEqualTo: currentUserId).get().then((value) {
      if (value.docs[0].exists) {
        Map onlineUser = value.docs[0].data();
        if (onlineUser['role'] == 'admin') {
          Navigator.pushNamed(context, AddProperty.id);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text('Only ADMINS are allowed to Add a Property'),
            ),

          ); Navigator.pop(context);
        }
      }
    });
  }
}

/**FirebaseAuth.instance.currentUser.then((user){
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
} **/
