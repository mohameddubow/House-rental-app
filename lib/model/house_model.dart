import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'card_model.dart';

//--------THIS IS THE HOUSE CLASS THAT COMES AFTER THE USER PRESSES ONE OF THE CATEGORIES IN THE CATEGORIES TAB------------
//--------THIS IS A STATEFUL WIDGET FOR THE HOUSE CLASS-----------------------------
class House extends StatefulWidget {
  static String id = 'house_screen';

  @override
  State<House> createState() => _HouseState();
}

//---------------THE LOGIC FOR THE FIREBASE DATA RETRIEVAL RESIDES HERE------------------
class _HouseState extends State<House> {
  //------HERE WE ARE MAKING A REFERENCE TO A COLLECTION IN THE DATABASE CALLED 'apartments',
  // SO WE ASSIGN THE LOGIC TO A VARIABLE CALLED 'reference'
  final CollectionReference reference =
      FirebaseFirestore.instance.collection('Apartments');

  //--------HERE WE BUILD A BODY FOR THE HOUSE SCREEN--------------------
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //----------APPBAR----------------------------
        appBar: AppBar(
          title: Text('Rubic Homes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        //------------BODY---------------------------
        body:
            //HERE WE USE A STREAMBUILDER
            StreamBuilder<QuerySnapshot>(
          //-----------HERE WE CAPTURE A SNAPSHOT OF THE RETURNING DATA FROM THE COLLECTION STREAM--------
          stream: reference.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            //-----HERE WE MAKE USE OF AN IF-ELSE- STATEMENT, WHEREBY IF THE SNAPSHOT OF THE STREAM FROM THE DATABASE HAS DATA,
            // THEN WE RETURN A LIST OF CARDS THATS HAS DATA FROM THE DATABASE, ELSE
            //IF THERE IS NO DATA, WE RETURN A CIRCULAR PROGRESS INDICATOR.
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemBuilder: (BuildContext, index) {
                  //HERE WE CAPTURE A DOCUMENT SNAPSHOT FROM THE DOCUMENTS
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  return Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(5.0),
                    child: CardModel(
                      documentSnapshot['name'],
                      documentSnapshot['location'],
                      documentSnapshot['ImgUrl'],
                      documentSnapshot['price'],
                      documentSnapshot['phone'],
                    ),
                  );
                },
                itemCount: streamSnapshot.data!.docs.length,
                shrinkWrap: true,
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.vertical,
              );
            }
            //IF THE SNAPSHOT OF THE STREAM HAS NO DATA, THEN RETURN A CIRCULAR PROGRESS INDICATOR
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
