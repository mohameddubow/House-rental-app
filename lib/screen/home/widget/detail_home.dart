import 'package:flutter/material.dart';

//------------------CARD DETAILS PAGE----------------------------------------
class DetailHome extends StatefulWidget {
  static String id = 'detail_home_screen';
  const DetailHome({Key? key}) : super(key: key);

  @override
  State<DetailHome> createState() => _DetailHomeState();
}

class _DetailHomeState extends State<DetailHome> {
  @override
  Widget build(BuildContext context) {
    //-----------------------------------------------------------------------------------------
    //THIS RECEIVES DATA FROM THE PREVIOUS SCREEN,
    final routeData = ModalRoute.of(context)!.settings.arguments as Map;
    final newImageUrl = routeData['ImageUrl'];
    final newPrice = routeData['price'];
    final newPhone = routeData['phone'];
//----------------------------------------------------------------------------------------------

    return Scaffold(
      //------------------------AppBar-------------------------------------------
      appBar: AppBar(
        title: Text('Rubic Homes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      //---------------------BODY--------------------------------------------
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //-------------DISPLAYS IMAGE ON DETAILS PAGE----------------------
            SizedBox(
              height: 370,
              child: Container(
                height: 350,
                width: 400,
                child: Image.asset(
                  'assets/images/rental1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            //--------THIS DISPLAYS THE CONTENT SUCH AS THE CONTACT OF THE LANDLORD AND THE PRICE OF THE RENTAL------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    //---------THIS DISPLAYS THE TEXT 'THIS PROPERTY OWNER PHONE NUMBER'---------
                    'This Property Owner Phone Number:,',
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    //THIS DISPLAYS THE PHONE NUMBER OF THE LANDLORD
                    '${newPhone}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 19, color: Colors.redAccent),
                  ),
                  Divider(
                    height: 15,
                    thickness: 1,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    //-------------THIS DISPLAYS THE THE TEXT 'THE BEST OF THE DEALS'---------------------
                    'The best of the deals!',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 20,
                          color: Colors.blueAccent,
                        ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          //--------------------THIS DISPLAYS THE PRICE ON THE SCREEN----------------
                          text: newPrice,
                          style:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent,
                                  ),
                        ),
                        TextSpan(
                          //-----------THIS DISPLAYS THE TEXT 'PER MONTH' ON THE SCREEN, JUST BESIDES THE PRICE--------------
                          text: ' per Month',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 14,
                                    // color: Colors.redAccent,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Divider(
                    height: 15,
                    thickness: 1,
                    color: Colors.redAccent,
                  ),
                ],
              ),
              //content intro
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              //THIS SETS THE STYLE AND MEASUREMENTS FOR THE BUTTON
              child: ElevatedButton(
                //-----------------Button for Booking Fuctionality and Mpesa-------------------------
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
                  child: const Text(
                    //-------------------THIS TEXT DISPLAYS BOOK NOW ON THE BUTTON-------------------
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
