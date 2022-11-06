import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:house_rentall_app/screen/details/detail.dart';
import 'card_model.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class House extends StatefulWidget {
  static String id = 'house_screen';

  //const House({Key? key}) : super(key: key);

  @override
  State<House> createState() => _HouseState();
}

class _HouseState extends State<House> {
  final CollectionReference reference =
      FirebaseFirestore.instance.collection('Apartments');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Rubic Homes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: reference.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemBuilder: (BuildContext, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  return Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(5.0),
                    child: CardModel(
                      documentSnapshot['name'],
                      documentSnapshot['location'],
                      documentSnapshot['ImgUrl'],
                    ),
                  );
                },
                itemCount: streamSnapshot.data!.docs.length,
                shrinkWrap: true,
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.vertical,
              );
            }
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.blue,
              ),
            );
          },
        ),
      ),
    );
  }
}
