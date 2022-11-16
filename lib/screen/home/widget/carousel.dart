import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

Carousel customCarousel() {
  return Carousel(
    boxFit: BoxFit.cover,
    images: [
      //NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
      //NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
      ExactAssetImage("assets/images/rental1.jpg"),
      ExactAssetImage("assets/images/rental2.jpg"),
      ExactAssetImage("assets/images/rental3.jpg"),
      ExactAssetImage("assets/images/rental4.jpg"),
      ExactAssetImage("assets/images/rental5.jpg"),
      ExactAssetImage("assets/images/rental6.jpg"),
      ExactAssetImage("assets/images/rental7.jpg"),
    ],
    autoplay: false,
    animationCurve: Curves.fastOutSlowIn,
    //animationDuration: Duration(milliseconds: 1000),
    dotSize: 4.0,
    indicatorBgPadding: 2.0,
  );
}
