import 'package:flutter/material.dart';
import '/screen/home/widget/welcome_text.dart';
import '/screen/home/widget/search_input.dart';
import 'carousel.dart';

class First_tab_page extends StatelessWidget {
  const First_tab_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        WelcomeText(),
        SearchInput(),
        Divider(
          height: 30,
          thickness: 1.5,
          color: Colors.black26,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            splashColor: Colors.red,
            onTap: () {},
            child: Container(
              child: Column(
                children: [
//Card 1
                  Card(
                    margin: EdgeInsets.only(bottom: 2),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Container(
                      child: Image.asset(
                        "assets/images/rental20.jpg",
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.deepOrange.shade50.withOpacity(0.1),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            'Bungalow, Westlands',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                                fontSize: 15),
                          ),
                          Spacer(),
                          Spacer(),
                          Text(
                            "Kshs 25,000 p.m",
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

//Card 2
                  Card(
                    margin: EdgeInsets.only(bottom: 2),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Container(
                      child: Image.asset(
                        "assets/images/rental21.jpg",
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.deepOrange.shade50.withOpacity(0.1),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            'Luxury home, Muthaiga',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                                fontSize: 15),
                          ),
                          Spacer(),
                          Spacer(),
                          Text(
                            "Kshs 30,000 p.m",
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

//Card 3
                  Card(
                    margin: EdgeInsets.only(bottom: 2),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Container(
                      child: Image.asset(
                        "assets/images/rental22.jpg",
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.deepOrange.shade50.withOpacity(0.1),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            'Single family, Rongai',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                                fontSize: 15),
                          ),
                          Spacer(),
                          Spacer(),
                          Text(
                            "Kshs 45,000 p.m",
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

                  // Card 4
                  Card(
                    margin: EdgeInsets.only(bottom: 2),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Container(
                      child: Image.asset(
                        "assets/images/rental27.jpg",
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.deepOrange.shade50.withOpacity(0.1),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            'Villa, Nyali',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                                fontSize: 15),
                          ),
                          Spacer(),
                          Spacer(),
                          Text(
                            "Kshs 72,000 p.m",
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

                  //Card 5
                  Card(
                    margin: EdgeInsets.only(bottom: 2),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Container(
                      child: Image.asset(
                        "assets/images/rental28.jpg",
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.deepOrange.shade50.withOpacity(0.1),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            'Wedding home, Nakuru',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                                fontSize: 15),
                          ),
                          Spacer(),
                          Spacer(),
                          Text(
                            "Kshs 50,000 p.m",
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

                  //Card 6
                  Card(
                    margin: EdgeInsets.only(bottom: 2),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Container(
                      child: Image.asset(
                        "assets/images/rental30.jpg",
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.deepOrange.shade50.withOpacity(0.1),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            'Luxury Villa, Diani',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                                fontSize: 15),
                          ),
                          Spacer(),
                          Spacer(),
                          Text(
                            "Kshs 90,000 p.m",
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

                  //Card 7
                  Card(
                    margin: EdgeInsets.only(bottom: 2),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    child: Container(
                      child: Image.asset(
                        "assets/images/rental17.jpg",
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.deepOrange.shade50.withOpacity(0.1),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            'Bungalow, Eldoret',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                                fontSize: 15),
                          ),
                          Spacer(),
                          Spacer(),
                          Text(
                            "Kshs 86,000 p.m",
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

                  //Card 8

                  //Card 9
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// SizedBox(
// height: 375.0,
// width: 357.0,
// child: customCarousel(),
//),
