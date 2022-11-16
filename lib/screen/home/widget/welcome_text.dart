import 'package:flutter/material.dart';

//------THIS DISPLAYS TWO TEXTS,'HELLO DEAR MEMBER' AND 'FIND YOUR SWEET HOME'
class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //------------------TEXT 1--------------------------------
          Text(
            'Hello Dear member',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            //----------------TEXT 2--------------------------------
            'Find your sweet home',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
