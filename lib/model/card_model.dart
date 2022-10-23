import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/details/detail.dart';


class CardModel extends StatelessWidget {
  const CardModel({
    Key? key,
  }) : super(key: key);

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
              child: Image.asset(
                'assets/images/rental1.jpg',
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
              leading: Text('clothing,'),
              trailing: Text('Kshs 45000 p.m'),
            ),
          ),
        ),
      ],
    );
  }
}
