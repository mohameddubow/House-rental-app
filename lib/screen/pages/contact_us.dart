import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  static String id = 'contact_us_screen';

  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //This container sets the background color of our page thereby distinguishing from the color of the cards
        Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('Contact us'),
      ),
      body: Container(
        color: Colors.grey[300],
        child:
            //This aligns the contents of the page in a scrolling List
            ListView(
          children: [
            // This below padding sets the space between the edges of the screen and our cards
            Padding(
              padding: const EdgeInsets.all(15.0),
              child:
                  // This is the First Card containing the information on how to conract us
                  Card(
                child: Column(
                  children: [
                    //Code for Customer Care
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Customer Care',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                      ),
                    ),
                    //Code for Customer care

                    //Code for Phone number
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.blueAccent,
                      ),
                      title: Text(
                        'Phone Number',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('0716788723'),
                    ),

                    //Code for Email
                    ListTile(
                      leading: Icon(
                        Icons.email_outlined,
                        color: Colors.redAccent,
                      ),
                      title: Text(
                        'Email',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('RubicHomes@gmail.com'),
                    ),

                    //Code for Website
                    ListTile(
                      leading: Icon(Icons.language_sharp),
                      title: Text(
                        'Website',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('www.rubicHomes.com'),
                    ),
                  ],
                ),
              ),
            ),

            //This is the Second card, it has information about our office locations
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 55.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            'Our Offices',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 2),
                      child: Text(
                        'Rubic Homes Limited',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'DunHill Towers,',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Waiyaki Way/Chiromo Road,Westlands',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Nairobi, Kenya',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Text(
                '@2022 Rubic Homes.All Rights Reserved.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    decoration: TextDecoration.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
