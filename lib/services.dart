/**import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class DataModel extends ChangeNotifier{
  static const NAME= 'name';
  static const PRICE='price';
  static const IMAGE= 'imgUrl';

  late String name;
  late String price;
  late String imgUrl;

  DataModel.fromSnapshot(DocumentSnapshot snapshot){
    Map data =snapshot.data();

  }

}**/