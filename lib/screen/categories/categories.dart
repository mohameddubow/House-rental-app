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
      //-------------APPBAR-----------------------------------------------
       appBar: AppBar(
      title: Text('Rubic Homes'),
      backgroundColor: Colors.redAccent,
      ),
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
            MyCard4(
              title: 'University Hostels',
              icon: Icons.account_balance_sharp,
              colour: Colors.blue,
            ),
            MyCard5(
              title: 'Wedding homes',
              icon: Icons.holiday_village_outlined,
              colour: Colors.blue,
            ),
            MyCard2(
              title: 'Luxury Homes',
              icon: Icons.business,
              colour: Colors.blue,
            ),
            MyCard1(
              title: 'Bedsitters',
              icon: Icons.single_bed_outlined,
              colour: Colors.blue,
            ),
            MyCard3(
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
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard1 extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor colour;

  MyCard1({
    required this.title,
    required this.icon,
    required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, BedSitter.id);
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
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard2 extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor colour;

  MyCard2({
    required this.title,
    required this.icon,
    required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, LuxuryHomes.id);
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
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard3 extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor colour;

  MyCard3({
    required this.title,
    required this.icon,
    required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SingleFamilyHomes.id);
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
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard4 extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor colour;

  MyCard4({
    required this.title,
    required this.icon,
    required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, UniversityHotels.id);
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
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard5 extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor colour;

  MyCard5({
    required this.title,
    required this.icon,
    required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, WeddingHomes.id);
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
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
