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
//  final Reference storageRef = FirebaseStorage.instance.ref();
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

class BedSitter extends StatefulWidget {
  static String id = 'bedsitter_screen';

  @override
  _BedSitterState createState() => _BedSitterState();
}

//---------------THE LOGIC FOR THE FIREBASE DATA RETRIEVAL RESIDES HERE------------------
class _BedSitterState extends State<BedSitter> {
  //------HERE WE ARE MAKING A REFERENCE TO A COLLECTION IN THE DATABASE CALLED 'apartments',
  // SO WE ASSIGN THE LOGIC TO A VARIABLE CALLED 'reference'
//  final Reference storageRef = FirebaseStorage.instance.ref();
  final CollectionReference reference =
      FirebaseFirestore.instance.collection('Bedsitters');

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

class LuxuryHomes extends StatefulWidget {
  static String id = 'luxury_homes_screen';

  @override
  _LuxuryHomesState createState() => _LuxuryHomesState();
}

//---------------THE LOGIC FOR THE FIREBASE DATA RETRIEVAL RESIDES HERE------------------
class _LuxuryHomesState extends State<LuxuryHomes> {
  //------HERE WE ARE MAKING A REFERENCE TO A COLLECTION IN THE DATABASE CALLED 'apartments',
  // SO WE ASSIGN THE LOGIC TO A VARIABLE CALLED 'reference'
//  final Reference storageRef = FirebaseStorage.instance.ref();
  final CollectionReference reference =
      FirebaseFirestore.instance.collection('Luxury Homes');

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

class SingleFamilyHomes extends StatefulWidget {
  static String id = 'single_family_home_screen';

  @override
  _SingleFamilyHomesState createState() => _SingleFamilyHomesState();
}

//---------------THE LOGIC FOR THE FIREBASE DATA RETRIEVAL RESIDES HERE------------------
class _SingleFamilyHomesState extends State<SingleFamilyHomes> {
  //------HERE WE ARE MAKING A REFERENCE TO A COLLECTION IN THE DATABASE CALLED 'apartments',
  // SO WE ASSIGN THE LOGIC TO A VARIABLE CALLED 'reference'
//  final Reference storageRef = FirebaseStorage.instance.ref();
  final CollectionReference reference =
      FirebaseFirestore.instance.collection('Single family homes');

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

class UniversityHotels extends StatefulWidget {
  static String id = 'university_hotels';

  @override
  _UniversityHotelsState createState() => _UniversityHotelsState();
}

//---------------THE LOGIC FOR THE FIREBASE DATA RETRIEVAL RESIDES HERE------------------
class _UniversityHotelsState extends State<UniversityHotels> {
  //------HERE WE ARE MAKING A REFERENCE TO A COLLECTION IN THE DATABASE CALLED 'apartments',
  // SO WE ASSIGN THE LOGIC TO A VARIABLE CALLED 'reference'
//  final Reference storageRef = FirebaseStorage.instance.ref();
  final CollectionReference reference =
      FirebaseFirestore.instance.collection('University hostels');

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

class WeddingHomes extends StatefulWidget {
  static String id = 'wedding_homes';

  @override
  _WeddingHomesState createState() => _WeddingHomesState();
}

//---------------THE LOGIC FOR THE FIREBASE DATA RETRIEVAL RESIDES HERE------------------
class _WeddingHomesState extends State<WeddingHomes> {
  //------HERE WE ARE MAKING A REFERENCE TO A COLLECTION IN THE DATABASE CALLED 'apartments',
  // SO WE ASSIGN THE LOGIC TO A VARIABLE CALLED 'reference'
//  final Reference storageRef = FirebaseStorage.instance.ref();
  final CollectionReference reference =
      FirebaseFirestore.instance.collection('Wedding homes');

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
