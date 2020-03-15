import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_march/customUI/sizeHelper.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';
import 'define.dart';

class SmartHomeApp1 extends StatefulWidget {
  @override
  _SmartHomeApp1State createState() => _SmartHomeApp1State();
}

class _SmartHomeApp1State extends State<SmartHomeApp1> {
  /* Data */
  String locked = "locked";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Stack(
        children: <Widget>[
          //norhart icon
          Positioned(
            top: height * 0.5 / 10,
            right: 0,
            left: 0,
            child: Container(
              height: height * 0.5 / 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.dove,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  SizedBox(width: padding / 4),
                  Text(
                    "norhart",
                    style: GoogleFonts.rye(
                        textStyle: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.0,
                            fontSize: 30.0)),
                    // style: TextStyle(
                    //     color: Colors.white,
                    //     fontStyle: FontStyle.normal,
                    //     fontSize: 30.0,
                    //     fontWeight: FontWeight.bold,
                    //     letterSpacing: 1.0),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: padding * 2, right: padding * 2, top: padding * 1.5),
            child: Container(
              width: width,
              height: height,
              // color: Colors.blue,
              child: Row(
                children: <Widget>[
                  // Left Screen
                  Container(
                    margin: EdgeInsets.only(right: padding, bottom: padding),
                    width: width / 2 - padding * 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: height * 3.2 / 9,
                          width: width / 2 - padding * 3,
                          padding:
                              EdgeInsets.only(left: padding, bottom: padding),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(padding),
                              color: containerColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: height * 0.8 / 9,
                                // color: Colors.red,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      bottom: 0,
                                      child: Container(
                                        height: height * 0.8 / 9,
                                        width: height * 0.8 / 9,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(radius * 2),
                                          color: Color.fromRGBO(66, 68, 73, 1),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: height * 0.18 / 9,
                                      left: height * 0.18 / 9,
                                      bottom: height * 0.18 / 9,
                                      child: Container(
                                        height: height * 0.6 / 9,
                                        width: height * 0.4 / 9,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                radius * 2),
                                            color: Colors.black54),
                                      ),
                                    ),
                                    Positioned(
                                      top: height * 0.22 / 9,
                                      left: height * 0.22 / 9,
                                      bottom: height * 0.22 / 9,
                                      right: height * 0.15 / 9,
                                      child: Container(
                                        height: height * 0.4 / 9,
                                        width: height * 0.4 / 9,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(radius),
                                          color: sliderColors,
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: padding / 2),
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                          height: height * 0.2 / 9,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Icon(
                                                Icons.lock,
                                                color: Colors.black87,
                                                size: 14.0,
                                              ),
                                              Text(
                                                " slide to unlock",
                                                style: GoogleFonts.rye(
                                                    textStyle: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 8.0)),
                                              ),
                                              Icon(
                                                Icons.arrow_right,
                                                color: Colors.black87,
                                                size: 20.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        // child: Placeholder(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.4 / 9,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: padding),
                                child: Center(
                                  child: Icon(
                                    Icons.fingerprint,
                                    size: 40.0,
                                    color: Colors.white70,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.4 / 9,
                              ),
                              Text(
                                "doors",
                                style: GoogleFonts.rye(
                                    textStyle: TextStyle(
                                        color:
                                            Colors.grey[500].withOpacity(0.8),
                                        fontSize: 16.0)),
                              ),
                              Text(
                                "$locked",
                                style: GoogleFonts.rye(
                                    textStyle: TextStyle(
                                        color: Colors.grey[300],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0)),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: height * 2 /,
                        // ),
                        SizedBox(
                          height: height * 0.3 / 9,
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              height: height * 3.5 / 9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(padding),
                                color: containerColor,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(padding / 4),
                              height: height * 2.5 / 9,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(padding),
                                  color: container2Color),
                              // child: Placeholder(),
                            ),
                            Positioned(
                              left: 0,
                              bottom: 0,
                              right: 0,
                              child: Container(
                                margin: EdgeInsets.only(left: padding),
                                height: height * 0.65 / 9,
                                // color: Colors.red,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "thermostat",
                                      style: TextStyle(
                                          color:
                                              Colors.grey[500].withOpacity(0.8),
                                          fontSize: 16.0,
                                          letterSpacing: 0.8,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "ON",
                                      style: TextStyle(
                                          color: textenableColor,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: padding / 4,
                                  right: padding / 4,
                                  // bottom: padding / 4,
                                  top: padding * 1.5),
                              height: height * 2 / 9,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: padding / 2),
                                    height: height * 1.0 / 9,
                                    // color: Colors.red,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          // color: Colors.red,
                                          child: AutoSizeText(
                                            "70",
                                            textAlign: TextAlign.end,
                                            style: GoogleFonts.rye(
                                              textStyle: TextStyle(
                                                  color: textdisableColor,
                                                  fontSize: 70.0),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: padding / 4),
                                        Container(
                                          width: width * 0.5 / 10,
                                          child: Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              SizedBox(
                                                height: height * 0.1 / 10,
                                              ),
                                              Text(
                                                "0",
                                                style: GoogleFonts.rye(
                                                    textStyle: TextStyle(
                                                        color: textdisableColor,
                                                        fontSize: 24.0)),
                                              ),
                                              Text("C",
                                                  style: GoogleFonts.rye(
                                                      textStyle: TextStyle(
                                                          color:
                                                              textdisableColor,
                                                          fontSize: 24.0))),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: padding),
                                    height: height * 1 / 9,
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.supervised_user_circle,
                                              size: 14.0,
                                              color: textdisableColor,
                                            ),
                                            SizedBox(width: padding / 2),
                                            Text("HVRC",
                                                style: GoogleFonts.rye(
                                                    textStyle: TextStyle(
                                                        // fontWeight: FontWeight.w100,
                                                        color: textdisableColor,
                                                        fontSize: 14.0))),
                                          ],
                                        ),
                                        SizedBox(height: padding / 4),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: padding * 1.3),
                                          child: Row(
                                            children: <Widget>[
                                              Text("50°C - 65°C",
                                                  style: GoogleFonts.rye(
                                                      textStyle: TextStyle(
                                                          // fontWeight: FontWeight.w100,
                                                          color:
                                                              textdisableColor,
                                                          fontSize: 14.0))),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: padding / 2),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.fan,
                                              size: 14.0,
                                              color: textdisableColor,
                                            ),
                                            SizedBox(width: padding / 2),
                                            Text("FAN - ON",
                                                style: GoogleFonts.rye(
                                                    textStyle: TextStyle(
                                                        // fontWeight: FontWeight.w100,
                                                        color: textdisableColor,
                                                        fontSize: 14.0))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Right Screen
                  Container(
                    margin: EdgeInsets.only(left: padding, bottom: padding),
                    width: width / 2 - padding * 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: height * 2.5 / 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(padding),
                              color: containerColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: height * 1.2 / 10,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: height * 0.4 / 10,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          CircleEnable(height: height)
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: height * 0.2 / 10),
                                    Container(
                                      height: height * 0.4 / 10,
                                      child: Placeholder(),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: height * 0.2 / 10),
                              Container(
                                height: height * 0.8 / 10,
                                child: Placeholder(),
                              )
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: height * 2 /,
                        // ),
                        SizedBox(
                          height: height * 0.3 / 10,
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              height: height * 3.5 / 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(padding),
                                  color: containerColor),
                              // child: Placeholder(),
                            ),
                            Container(
                              margin: EdgeInsets.all(padding / 4),
                              height: height * 2.0 / 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(padding),
                                  color: Colors.green),
                              // child: Placeholder(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.3 / 10,
                        ),
                        Container(
                          height: height * 1.8 / 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(padding),
                              color: containerColor),
                          // child: Placeholder(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleEnable extends StatelessWidget {
  const CircleEnable({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height * 0.15 / 10,
      height: height * 0.15 / 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius * 2), color: color_enable),
    );
  }
}
