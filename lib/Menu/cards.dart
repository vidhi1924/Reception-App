import 'package:flutter/material.dart';
import 'package:flutter_splashscreen_audio/Invitation/card.dart';
import 'package:flutter_splashscreen_audio/Menu/Gallery/gallery.dart';
import 'package:url_launcher/url_launcher.dart';

class Cards extends StatelessWidget {
  final String number;
  final String item;
  final Color backgrClr;
  final Color firstCircle;
  final Color secondCircle;

  Cards(
      {this.number,
      this.item,
      this.backgrClr,
      this.firstCircle,
      this.secondCircle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                color: backgrClr,
              ),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: firstCircle,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60.0)),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: secondCircle,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(60.0)),
                ),
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            print(
                "number----------------------------------------------------------------------------");
            print(number);
            if (number == '1') {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InviteCard()));
            } else if (number == '2') {
              _launchMapsUrl();
            } else if (number == '3') {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Gallery()));
            } else {
              _launchYoutubeUrl();
            }
          },
          child: Container(
            height: 100.0,
            width: 230.0,
            decoration: BoxDecoration(
              // color: Color.fromRGBO(143, 148, 251, .2),
              // color: Colors.pink[50],
              color: Colors.white54,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  number,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'GreatVibes',
                    color: Color(0xFF00003f),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'GreatVibes',
                    color: Color(0xFF00003f),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

void _launchMapsUrl() async {
  final address =
      'Samarambh Lawn and Banquets, Ghodbunder Rd, Ovala, Gowniwada, Owale, Thane West, Mumbai, Maharashtra 400607';
  final url = 'https://www.google.com/maps/search/${Uri.encodeFull(address)}';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchYoutubeUrl() async {
  // final address =
      // 'Samarambh Lawn and Banquets, Ghodbunder Rd, Ovala, Gowniwada, Owale, Thane West, Mumbai, Maharashtra 400607';
  final url = 'https://www.youtube.com/watch?v=cr4Tz4JEP40&list=PLPRlIF-ZGlTHIR8DuBikPGZOEX8iMIqBX';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
