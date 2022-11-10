import 'package:flutter/material.dart';

//--------------------------------------------------------------------------------------------------
//THIS IS THE DETAILS PAGE, YOU COME TO THIS PAGE AFTER PRESSING ONE OF THE RENTALS
class DetailPage extends StatefulWidget {
  static String id = 'detail_screen';
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
//-----------------------------------------------------------------------------
    //RECEIVING DATA FROM THE PREVIOUS SCREEN, THE CARDMODEL SCREEN
    final routeData = ModalRoute.of(context)!.settings.arguments as Map;
    final newPrice = routeData['price'];
    final newPhone = routeData['phone'];

//THIS BUILDS THE DETAILS PAGE
    return Scaffold(
      appBar:
          //--------------------------------------------------------------------
      //THIS IS THE APPBAR
      AppBar(
        title: Text('Rubic Homes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      //THIS IS THE BODY
      //------------------------------------------------------------------------
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //-----------------------------------------------------------------------
            //THIS DISPLAYS THE IMAGE ON THE DETAIL PAGE
          Container(
            height: 350,
            width: 400,
            child: Image.asset(
            'assets/images/rental1.jpg',
            fit: BoxFit.cover,
        ),
          ),
            //---------------------------------------------------------------------
            //SIZED BOX THAT GIVES A LITTLE SPACE
            const SizedBox(height: 10),
            //---------------------------------------------------------
            //THIS DISPLAYS THE CONTENT SUCH AS THE CONTACT OF THE LANDLORD AND THE PRICE OF THE RENTAL
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //--------------------------------------------------------------
                //THIS DISPLAYS THE TEXT 'THIS PROPERTY OWNER PHONE NUMBER'
                Text(
                  'This Property Owner Phone Number:,',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //--------------------------------------------------------------
                //SIZED BOX WITH A HEIGHT
                const SizedBox(height: 10),
                //--------------------------------------------------------------
                //THIS DISPLAYS THE PHONE NUMBER OF THE LANDLORD
                Text(
                  '${newPhone}',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 19,
                      color: Colors.redAccent
                  ),
                ),
                //--------------------------------------------------------------
                //THIS IS A DIVIDER THAT DRAWS A VISIBLE LINE ON THE SCREEN
                Divider(
                  height: 15,
                  thickness: 1,
                  color: Colors.redAccent,
                ),
                //-------------------------------------------------------------
                //SIZED BOX WITH A HEIGHT THAT GIVES A SPACING BETWEEN TWO WIDGETS IN A COLUMN
                const SizedBox(height: 15),
                //--------------------------------------------------------------
                //THIS DISPLAYS THE THE TEXT 'THE BEST OF THE DEALS'
                Text(
                  'The best of the deals!',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 20,
                    color: Colors.blueAccent,
                  ),
                ),
                //SIZED BOX WITH A HEIGHT
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      //--------------------------------------------------------
                      //THIS DISPLAYS THE PRICE ON THE SCREEN
                      TextSpan(
                        text: 'Ksh $newPrice'.toString(),
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                      //--------------------------------------------------------
                      //----------THIS DISPLAYS THE TEXT 'PER MONTH' ON THE SCREEN, JUST BESIDES THE PRICE-------------
                      TextSpan(
                        text: ' per Month',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 14,
                          // color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                //--------------------------------------------------------------
                //SIZED BOX WITH A HEIGHT
                const SizedBox(height: 15),
                //--------------------------------------------------------------
                //DIVIDER THAT DRAWS A SMALL RED LINE ON THE SCREEN
                Divider(
                  height: 15,
                  thickness: 1,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ),
            //------------------------------------------------------------------
            //SIZED BOX THAT GIVES A LITTLE SPACING
            const SizedBox(height: 20),
            //------------------------------------------------------------------
            //BUTTON FOR BOOKING FUNCTIONALITY AND MPESA
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
              //---------------------------------------------------------------
              //THIS SETS THE STYLE AND MEASUREMENTS FOR THE BUTTON
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const
                  //------------------------------------------------------------
                  //THIS TEXT DISPLAYS BOOK NOW ON THE BUTTON
                  Text(
                    'Book Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
