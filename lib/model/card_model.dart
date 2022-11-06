//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/details/detail.dart';
//import 'house_model.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class CardModel extends StatelessWidget {
  late String name;
  late String loc;
  late String img;

  CardModel(
    @required this.name,
    @required this.loc,
    @required this.img,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: () {Navigator.pushNamed(context, DetailPage.id);},
      child: Container(
        child: Column(
          children: [
//Card 1
            Card(
              margin: EdgeInsets.only(bottom: 2),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Container(
                child: Image.network(
                  img,
                ),
              ),
            ),
            Material(
              color: Colors.deepOrange.shade50.withOpacity(0.1),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(
                      'Bungalow, Westlands',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                          fontSize: 15),
                    ),
                    Spacer(),
                    Spacer(),
                    Text(
                      loc,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 15,
              thickness: 1,
              color: Colors.black26,
            )
          ],
        ),
      ),
    );
  }
}

/**Stack(
      alignment: AlignmentDirectional.bottomStart,
      //clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Material(
          child: InkWell(
            splashColor: Colors.redAccent,
            onTap: () {
              Navigator.pushNamed(context, DetailPage.id);
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
              //elevation: 5,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            color: Colors.deepOrange.shade50.withOpacity(0.1),

            //color: Colors.grey,
            child: ListTile(
              leading: Text(name,style: TextStyle(color: Colors.white, fontSize: 24),),
              trailing: Text(loc),
            ),
          ),
        ),
      ],
    **/ //);
