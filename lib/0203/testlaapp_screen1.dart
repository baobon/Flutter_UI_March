/* Tesla Smart App
https://dribbble.com/shots/10196092-Tesla-Smart-App
*/
import 'package:flutter/material.dart';

class TeslaSmartAppSreen1 extends StatefulWidget {
  @override
  _TeslaSmartAppSreen1State createState() => _TeslaSmartAppSreen1State();
}

class _TeslaSmartAppSreen1State extends State<TeslaSmartAppSreen1> {
  /* Color */
  // final Color backgroundColor2 = Color.fromRGBO(50, 57, 65, 1);
  final Color radiusCircleColor = _colorFromHex("#212121").withOpacity(0.8);
  final Color outlineCircleColor = _colorFromHex("#484848").withOpacity(0.2);
  final Color textColor = Colors.white;
  final Color hinttextColor = Colors.white60;
  final Color hintIconColor = Colors.white60;
  final Color circleColor = Colors.blue;

  /* Size */
  double width;
  double height;
  final double padding = 16.0;
  final double radius = 16.0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          // Background
          Center(
            child: Container(
              height: 300.0,
              width: double.infinity,
              // margin: EdgeInsets.only(left: padding*2),
              child: Image.asset(
                "assets/0203/tesla1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Body
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  // Right Icons
                  Container(
                    margin: EdgeInsets.only(top: padding, right: padding),
                    height: 80.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 60.0 + padding,
                        ),
                        Text(
                          "Tesla",
                          style: TextStyle(
                              color: hintIconColor,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w400),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              
                            });
                          },
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(padding * 3),
                              color: radiusCircleColor,
                              // border:
                              //     Border.all(width: 6, color: outlineCircleColor),
                            ),
                            child: Icon(
                              Icons.settings,
                              size: 24.0,
                              color: hintIconColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Tesla model X
                  Text(
                    "Model X",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold),
                  ),

                  // Km/h
                  Stack(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "297",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 120.0,
                            // letterSpacing: 1.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15.0,
                        right: 80.0,
                        child: Text(
                          "km",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            // letterSpacing: 1.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      )
                    ],
                  ),

                  // A/C is turned on
                  SizedBox(height: 200.0),
                  Text(
                    "A/C is turned on",
                    style: TextStyle(
                      color: hintIconColor,
                      fontSize: 20.0,
                      // letterSpacing: 1.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  // Circle lock
                  Container(
                    margin: EdgeInsets.only(top: padding, bottom: padding / 2),
                    height: 100.0,
                    // color: Colors.white,
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(radius * 4),
                              color: Colors.blue[800],
                              border: Border.all(
                                  width: 4.0, color: Colors.blue[600])),

                          child: Center(
                              child: Icon(
                            Icons.lock_open,
                            size: 34.0,
                            color: Colors.white,
                          )),
                          // color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  //Tap to open the car
                  Text(
                    "A/C is turned on",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16.0,
                      // letterSpacing: 1.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
