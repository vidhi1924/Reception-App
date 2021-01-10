import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/first.jpg'),
          AssetImage('assets/second.jpg'),
          AssetImage('assets/third.jpg'),
          AssetImage('assets/fourth.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 10.0,
        dotBgColor: Colors.transparent,
        dotColor: Colors.white70,
      ),
    );
  }
}