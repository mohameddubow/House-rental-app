import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/details/detail.dart';

//----------THIS IS A CARD MODEL CLASS,IT IS A BLUEPRINT FOR THE HOUSE CLASS THAT COMES AFTER THE USER PRESSES ONE OF THE CATEGORIES-----------------------
class CardModel extends StatelessWidget {
  late String name;
  late String loc;
  late String img;
  late String price;
  late String phone;

  CardModel(
    @required this.name,
    @required this.loc,
    @required this.img,
    @required this.price,
    @required this.phone,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: () {
        Navigator.pushNamed(context, DetailPage.id, arguments: {
          //---------------THIS PASSES THE DATA TO THE NEXT SCREEN, THE DETAILPAGE---------
          'price': price,
          'phone': phone,
          'name': name,
          'location': loc,
          'image': img,

        });
      },
      child: Container(
        child: Column(
          children: [
            //--------------CREATES A CARD-------------
            Card(
              //------------THE PROPERTIES OF THE CARD-------------
              margin: EdgeInsets.only(bottom: 2),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              //------------THE PROPERTIES OF THE CARD-------------
              child: Container(
                //---------------IMAGE--------------------
                child: Image.network(
                  img,
                ),
              ),
            ),
            Material(
              color: Colors.deepOrange.shade50.withOpacity(0.1),
              child: Container(
                child: Row(
                  //---------ROW CONTAINING AN ICON AND PRICE-------------------
                  children: [
                    //--------------ICON-------------------------
                    Icon(Icons.location_on_outlined),
                    Text(
                      loc,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                          fontSize: 15),
                    ),
                    Spacer(),
                    Spacer(),
                    Text(
                      //-----------DISPLAYS THE PRICE----------------
                      ('Kshs $price'),
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
