//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/details/detail.dart';
//import 'house_model.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class CardModel extends StatelessWidget {
  late String name;
  late String price;
  late String img;

   CardModel(@required this.name,@required this.price,@required this.img,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              leading: Text(name),
              trailing: Text(price),
            ),
          ),
        ),
      ],
    );
  }
}
