import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/details/detail.dart';
import 'card_model.dart';



class House extends StatefulWidget {
  static String id = 'house_screen';

  const House({Key? key}) : super(key: key);

  @override
  State<House> createState() => _HouseState();
}

class _HouseState extends State<House> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Container(
            color: Colors.white,
            padding: EdgeInsets.all(5.0),
            child: CardModel(),
          );
        },
        itemCount: 6,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
