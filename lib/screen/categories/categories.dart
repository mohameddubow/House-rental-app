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
              icon: Icons.hail,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'University Hostels',
              icon: Icons.hail,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'Bedsitters',
              icon: Icons.hail,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'University Hostels',
              icon: Icons.hail,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'University Hostels',
              icon: Icons.hail,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'University Hostels',
              icon: Icons.hail,
              colour: Colors.blue,
            ),
            MyCard(
              title: 'University Hostels',
              icon: Icons.hail,
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

  MyCard({required this.title, required this.icon, required this.colour});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
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
                size: 70.0,
                color: colour,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 17.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
