import 'package:flutter/material.dart';
import 'package:house_rentall_app/screen/home/widget/detail_home.dart';
import '/screen/home/widget/welcome_text.dart';
import '/screen/home/widget/carousel.dart';
import 'package:house_rentall_app/model/items_model.dart';

//----------HOMEPAGE/LANDING PAGE----------------------------

//------------------------------------------------------------------------------------------------
//This is the First Screen of our Application, the HomePage or the landing page of our application

class First_tab_page extends StatelessWidget {
  //--------------------------HOMEPAGE ITEMS------------------------------------------------
  //CONTITUTES A LIST OF THE ITEMS TO BE DISPLAYED ON THE HOMEPAGE
  final items = <Item>[
    Item(
        imageUrl: ("assets/images/rental20.jpg"),
        location: 'Bungalow, Westlands',
        name: 'Alladin homes',
        price: 'Kshs 25,000 p.m',
        phone: '0722347683'),
    Item(
        imageUrl: ("assets/images/rental21.jpg"),
        location: 'Luxury Home, Muthaiga',
        name:'Gharama homes',
        price: 'Kshs 30,000 p.m',
        phone: '0722347683'),
    Item(
        imageUrl: ("assets/images/rental22.jpg"),
        location: 'Single Family, Rongai',
        name:'Gia Apartments',
        price: 'Kshs 45,000 p.m',
        phone: '0722347683'),
    Item(
        imageUrl: ("assets/images/rental27.jpg"),
        location: 'Villa, Nyali',
        name:'Zana houses',
        price: 'Kshs 72,000 p.m',
        phone: '0722347683'),
    Item(
        imageUrl: ("assets/images/rental28.jpg"),
        location: 'Wedding home, Nakuru',
        name:'Tuko homes',
        price: 'Kshs 55,000 p.m',
        phone: '0722347683'),
    Item(
        imageUrl: ("assets/images/rental30.jpg"),
        location: 'Luxury Villa, Diani',
        name:'Uhuru Villas',
        price: 'Kshs 92,000 p.m',
        phone: '0722347683'),
    Item(
        imageUrl: ("assets/images/rental17.jpg"),
        location: 'Bungalow, Eldoret',
        name:'Kwenyu houses',
        price: 'Kshs 86,000 p.m',
        phone: '0722347683'),
    Item(
        imageUrl: ("assets/images/rental24.jpg"),
        location: 'Luxury home, Karen',
        name:'Jubilee Apartments',
        price: 'Kshs 90,000  p.m',
        phone: '0722347683'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      //-------------------------------------------------------------------------------------
      //LISTVIEW OF THE CONTENTS ON THE HOMEPAGE
      children: [
          WelcomeText(),
     //customCarousel(),
        Divider(
          height: 30,
          thickness: 1.5,
          color: Colors.black26,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              //---------------AN IMPLEMENTATION OF THE HOMECARD CLASS IS MADE-------------------
              //----------------THE LISTVIEW.BUILDER RETURNS A LIST OF THE HOMECARDS AUTOMATICALLY--------------------
              ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return
                  //------------------------THE HOMECARD---------------------------------------
                  HomeCard(
                imageUrl: item.imageUrl,
                price: item.price,
                name: item.name,
                location: item.location,
                phone: item.phone,
              );
            },
          ),
        )
      ],
    );
  }
}

//--------------HOMECARD CLASS BELOW-------------------------------
//--------------------------------------------------------------------------------------------------
//This is the Class model for the HomeCard. This enables us to reuse our code and follow the DRY(DON'T REPEAT YOURSELF) principle.
class HomeCard extends StatelessWidget {
  final String imageUrl;
  final String price;
final name;
  final location;
  final phone;

//THIS IS THE CONSTRUCTOR FOR THE CLASS
  const HomeCard(
      {required this.imageUrl,
      required this.price,
        required this.name,
      required this.location,
      required this.phone});
//---------------------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: () {
//----------------------------------------------------------------------------------------
        //THIS PUSHES OR PASSES OUR DATA TO THE NEXT SCREEN, THE DETAIL PAGE
        Navigator.pushNamed(context, DetailHome.id, arguments: {
          'image': imageUrl,
          'phone': phone,
          'name': name,
          'price': price,
          'location': location,

        });
      },
      child: Container(
        child: Column(
          children: [
//---------------------------------------------------------------------------------------
            //THIS IS A BLUEPRINT FOR THE CUSTOM HOMECARD
            Card(
              margin: EdgeInsets.only(bottom: 2),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Container(
                //---------------IMAGE OF THE CARD------------------------------------
                child: Image.asset(
                  imageUrl,
                ),
              ),
            ),
            Material(
              color: Colors.deepOrange.shade50.withOpacity(0.1),
              child: Container(
                child: Row(
                  //-------------------A ROW CONTAINING A LOCATION ICON AND THE PRICE-----------------
                  children: [
                    //---------------LOCATION ICON------------------------
                    Icon(Icons.location_on_outlined),
                    //---------------LOCATION TEXT-------------------------
                    Text(
                      location,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                          fontSize: 15),
                    ),
                    Spacer(),
                    Spacer(),
                    //----------------------THE PRICE------------------------------
                    Text(
                      price,
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
            ),
          ],
        ),
      ),
    );
  }
}
