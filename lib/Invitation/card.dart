import 'package:flutter/material.dart';
import 'package:flutter_splashscreen_audio/Animation/FadeAnimation.dart';

class InviteCard extends StatefulWidget {
  @override
  _InviteCardState createState() => _InviteCardState();
}

class _InviteCardState extends State<InviteCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Image.asset('assets/invitation.jpg',
              fit: BoxFit.cover,
              height: double.infinity
              ),
              Positioned(
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 4.5,
            top: MediaQuery.of(context).size.height / 4,
            child: FadeAnimation(
                1,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      'YOU  ARE  INVITED  TO  THE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'BodoniModa',
                          ),
                    ),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 4,
            right: MediaQuery.of(context).size.width / 4,
            top: MediaQuery.of(context).size.height / 3.5,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                4,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      'Reception',
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GreatVibes'),
                    ),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 4,
            right: MediaQuery.of(context).size.width / 4,
            top: MediaQuery.of(context).size.height / 2.7,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                6,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      '-OF-',
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'BodoniModa',
                          ),
                    ),
                  ),
                )),
          ),
        Positioned(
            left: MediaQuery.of(context).size.width / 4,
            right: MediaQuery.of(context).size.width / 4,
            top: MediaQuery.of(context).size.height / 2.4,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                8,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      'Yash & Krisha',
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GreatVibes'),
                    ),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 5,
            top: MediaQuery.of(context).size.height / 1.98,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                10,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      'SUNDAY  THE  THIRTY-FIRST  OF  JANUARY',
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'BodoniModa'),
                    ),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 5,
            top: MediaQuery.of(context).size.height / 1.89,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                10,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      'TWO  THOUSAND  AND  TWENTY-ONE',
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'BodoniModa'),
                    ),
                  ),
                )),
          ),
          
          
          Positioned(
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 5,
            top: MediaQuery.of(context).size.height / 1.75,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                12,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      "AT  SEVEN  O'CLOCK  IN  THE  EVENING",
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'BodoniModa'),
                    ),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.width / 5,
            top: MediaQuery.of(context).size.height / 1.65,
            // width: 80,
            // height: 150,
            child: FadeAnimation(
                14,
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      'AT  SAMARAMBH  LAWNS,  THANE.',
                      style: TextStyle(
                          // color: Color(0xff451457),
                          color: Colors.white,
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'BodoniModa'),
                    ),
                  ),
                )),
          ),
      ],),
    );
  }
}