import 'package:flutter/material.dart';
import 'package:house_rentall_app/model/house_model.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text('Rubic Homes'),
      // backgroundColor: Colors.redAccent,
      //),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            MyCard(
              title: 'Apartments',
              icon: Icons.apartment,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'University Hostels',
              icon: Icons.account_balance_sharp,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'Wedding homes',
              icon: Icons.holiday_village_outlined,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'Luxury Homes',
              icon: Icons.business,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'Bedsitters',
              icon: Icons.single_bed_outlined,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'Single Family Homes',
              icon: Icons.family_restroom_outlined,
              colour: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor colour;

  MyCard({
    required this.title,
    required this.icon,
    required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, House.id);
      },
      child: Card(
        margin: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 35.0,
                color: Colors.deepOrange,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
