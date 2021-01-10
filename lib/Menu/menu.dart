import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_splashscreen_audio/Menu/cards.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

List<String> items = ["Invitation", "Location", "Gallery", "Songs"];
// List<Color> colors = [Colors.blue[800], Color(0xFFffe5b4), Colors.red];
// List<Color> colors = [Color.fromRGBO(143, 148, 251, .2), Colors.white, Color.fromRGBO(143, 148, 251, .6)];
// List<Color> colors = [Colors.red[800], Colors.yellow[700], Colors.orange[800]];
// List<Color> colors = [Color(0xffDFB3AE), Color(0xff23292E), Color(0xffE4BC62)];
// List<Color> colors = [Color(0xff6F4073), Color(0xffCDA4CA), Color(0xff965B96)];
// List<Color> colors = [Color(0xff4F468D), Color(0xffA9A0D3), Color(0xff7E73C2)];
// List<Color> colors = [Color(0xff4F468D), Color(0xffCDCBD9), Color(0xff7E73C2)];
List<Color> colors = [Color(0xff4F468D), Color(0xffA9A1D6), Color(0xff7368B4)];
// dark, light, medium

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple[400],
      // backgroundColor: Color(0xffEDDCE7),
      // backgroundColor: Color(0xff6F4073),
      backgroundColor: Color(0xff4F468D),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 15.0, top: 30.0, bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Menu',
                    style: TextStyle(
                      // color: Color(0xFF00003f),
                      color: Colors.white,
                      fontSize: 100,
                      fontFamily: 'GreatVibes',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          // begin: Alignment.topLeft,
                          // end: Alignment.bottomRight,
                          colors: [
                            Color(0xffB78628),
                            Color(0xffC69320),
                            Color(0xffDBA514),
                            Color(0xffEEB609),
                            Color(0xffFCC201)
                          ]),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(30.0)),
                      // color: Color(0xFF00003f),
                      color: Colors.red[100],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0, top: 30.0),
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        return Cards(
                          number: (index + 1).toString(),
                          item: items[index],
                          backgrClr: colors[(index % colors.length)],
                          firstCircle: colors[(index + 1) % colors.length],
                          secondCircle: colors[(index + 2) % colors.length],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 40.0,
                        );
                      },
                      itemCount: 4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.quadraticBezierTo(size.width, 0.0, size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => true;
}
