import 'package:flutter/material.dart';
import 'package:house_rentall_app/model/house_model.dart';


//--------------------THIS PAGE CONSTITUTES THE CATEGORIES SCREEN--------------------------
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------------BODY-------------------------------------------------
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [

            //This contains an implementation of the Card class,...mulTiple Cards are created from the same class
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


//-------------------------------------------------------------------------------------------------

//This is a refactored card,...I created a Card model class for the Categories screen so that I can
//reuse the code for the Card multiple areas without repeating myself
//------------------------------------------------------------------------------------------------
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
      child:
      //----------------------CARD------------
      Card(
        margin: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //-----------------ICON--------------------
              Icon(
                icon,
                size: 35.0,
                color: Colors.deepOrange,
              ),
              //-----------------TITLE--------------------
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
