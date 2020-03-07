/* Tesla Smart App
https://dribbble.com/shots/10196092-Tesla-Smart-App
*/
import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:flutter_march/0203/tesla_data.dart';
import 'package:flutter_march/customUI/colorHelper.dart';
import 'package:flutter_march/customUI/iconcustomer.dart';
import 'package:flutter_march/customUI/sizeHelper.dart';
import 'package:flutter_march/customUI/textHelper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scrollable_bottom_sheet/scrollable_bottom_sheet.dart';
import 'package:scrollable_bottom_sheet/scrollable_controller.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;

class TeslaSmartAppSreen2 extends StatefulWidget {
  @override
  _TeslaSmartAppSreen2State createState() => _TeslaSmartAppSreen2State();
}

class _TeslaSmartAppSreen2State extends State<TeslaSmartAppSreen2> {
  double _sliderVar = 3.0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          // Body
          Positioned.fill(
            child: Column(
              children: <Widget>[
                // Top icon && Text
                Container(
                  margin: EdgeInsets.only(
                      top: padding * 2 / 3,
                      left: padding / 2,
                      right: padding / 2),
                  height: 64.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(padding * 3),
                          color: radiusCircleColor,
                          // border:
                          //     Border.all(width: 6, color: outlineCircleColor),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.short_text,
                            size: 30.0,
                            color: hintIconColor,
                          ),
                        ),
                      ),

                      //Center text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          BText("Tesla", textColor, 12.0, FontWeight.w400),
                          BText("${testLas.modelname}", textColor, 14.0,
                              FontWeight.w600),
                        ],
                      ),

                      //Right icon

                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(padding * 3),
                          color: radiusCircleColor,
                          // border:
                          //     Border.all(width: 6, color: outlineCircleColor),
                        ),
                        child: Icon(
                          FontAwesomeIcons.user,
                          size: 24.0,
                          color: hintIconColor,
                        ),
                      ),
                    ],
                  ),
                ),

                // Car Image
                Container(
                  height: 194.0,
                  width: double.infinity,
                  // margin: EdgeInsets.only(left: padding*2),
                  child: Image.asset(
                    "assets/0203/tesla2.jpg",
                    fit: BoxFit.fill,
                  ),
                ),

                Container(
                    margin: EdgeInsets.only(left: padding),
                    height: 24.0,
                    alignment: Alignment.centerLeft,
                    child:
                        BText("Status", Colors.white, 16.0, FontWeight.bold)),
                Container(
                  margin: EdgeInsets.only(top: padding),
                  height: 54.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Widget 1
                      Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.battery_std,
                                size: 14.0,
                                color: Colors.grey[400],
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              BText("Battery", Colors.grey[400], 14.0,
                                  FontWeight.w300),
                            ],
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          BText("${testLas.battery}%", Colors.white, 14.0,
                              FontWeight.bold),
                        ],
                      ),

                      //Widget 1
                      Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 14.0,
                                color: Colors.grey[400],
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              BText("Range", Colors.grey[400], 14.0,
                                  FontWeight.w300),
                            ],
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          BText("${testLas.range} km", Colors.white, 14.0,
                              FontWeight.bold),
                        ],
                      ),

                      //Widget 1
                      Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.temperatureLow,
                                size: 14.0,
                                color: Colors.grey[400],
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              BText("Temperature", Colors.grey[400], 14.0,
                                  FontWeight.w300),
                            ],
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          BText("${testLas.temperature} °C", Colors.white, 14.0,
                              FontWeight.bold),
                        ],
                      ),
                    ],
                  ),
                ),

                //Infomation
                Container(
                  margin: EdgeInsets.only(left: padding),
                  alignment: Alignment.centerLeft,
                  child:
                      BText("Infomation", Colors.white, 16.0, FontWeight.bold),
                ),

                // List Infomation
                Container(
                  margin: EdgeInsets.only(top: padding / 2, left: padding),
                  padding: EdgeInsets.only(right: padding * 2),
                  height: 160.0,
                  child: ListView.builder(
                    itemCount: listTeslas.length,
                    // padding: EdgeInsets.only(right: padding),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: padding),
                            width: width * 2 / 6.5,
                            child: Image.asset(
                              "assets/0203/listimage.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: padding / 2),
                            width: width * 2 / 6.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                BText("${listTeslas[index].name}", Colors.white,
                                    18.0, FontWeight.w400),
                                SizedBox(height: 4.0),
                                BText("${listTeslas[index].mode}",
                                    textColor.withOpacity(0.4), 14.0, null),
                                SizedBox(height: 8.0),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),

                //Nagavition && History
                Container(
                  margin: EdgeInsets.only(
                      top: padding * 2.1 / 4,
                      left: padding,
                      right: padding,
                      bottom: padding),
                  // height: 54.0,
                  child: Row(
                    children: <Widget>[
                      BText("Navigation", Colors.white, 16.0, FontWeight.bold),
                      Spacer(),
                      BText("History", textColor, 14.0, FontWeight.w400),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Navigator bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ScrollableBottomSheet(
              controller: ScrollableController(),
              minimumHeight: 80,
              halfHeight: 610,
              // mayExceedChildHeight: ,
              autoPop: false,
              scrollTo: ScrollState.full,
              snapAbove: true,
              snapBelow: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radius),
                    topRight: Radius.circular(radius),
                  ),
                  color: navigatorColor,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: padding,
                          right: padding * 11,
                          left: padding * 11),
                      height: 6.0,
                      color: Colors.white70,
                    ),

                    // A/C ON && Power
                    Container(
                      margin:
                          EdgeInsets.only(left: padding * 1.2, right: padding),
                      height: 54.0,
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              BText("A/C is ON", Colors.white, 18.0,
                                  FontWeight.w600),
                              BText(
                                  "Tap to turn off or swipe up\nfor a fast setup",
                                  textColor.withOpacity(0.4),
                                  14.0,
                                  null)
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 54.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(padding * 4),
                                color: Colors.blue),
                            child: Center(
                              child: Icon(
                                Icons.power_settings_new,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    // Widget value circle
                    Container(
                      margin: EdgeInsets.only(top: padding / 2),
                      height: 200,
                      width: 200.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: SingleCircularSlider(
                              100,
                              30,
                              height: 200.0,
                              width: 200.0,
                              primarySectors: 6,
                              secondarySectors: 15,
                              // baseColor: Colors.black,
                              selectionColor: Colors.blue,
                              // handlerColor: Colors.black,
                              handlerOutterRadius: 30.0,
                              // onSelectionChange: (int init, int end) {},
                              showRoundedCapInSelection: true,
                              showHandlerOutter: false,
                              sliderStrokeWidth: 30.0,
                            ),
                          ),
                          Center(),
                          Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              BText(
                                  "24°C", Colors.white, 24.0, FontWeight.w600),
                              BText("Colling...", Colors.white, 14.0,
                                  FontWeight.w300),
                            ],
                          ))
                        ],
                      ),
                    ),

                    // Fan Speed
                    Container(
                      margin: EdgeInsets.only(
                          left: padding * 4,
                          right: padding * 4,
                          top: padding,
                          bottom: padding),
                      height: 90.0,
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: BText(
                                "Fan Speed", textColor, 18.0, FontWeight.bold),
                          ),
                          SizedBox(
                            height: padding / 2,
                          ),
                          Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: padding * 1.5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                BText("1", textColor.withOpacity(0.4), 14.0,
                                    FontWeight.w300),
                                BText("2", textColor.withOpacity(0.4), 14.0,
                                    FontWeight.w300),
                                BText("3", textColor.withOpacity(0.4), 14.0,
                                    FontWeight.w300),
                                BText("4", textColor.withOpacity(0.4), 14.0,
                                    FontWeight.w300),
                                BText("5", textColor.withOpacity(0.4), 14.0,
                                    FontWeight.w300),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: padding / 8),
                            height: 30.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(padding),
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.black45,
                                      Colors.grey[500]
                                    ])),
                            child: Slider(
                              activeColor: Colors.blue,
                              inactiveColor: Colors.black,
                              value: _sliderVar,
                              min: 1.0,
                              max: 5.0,
                              divisions: 4,
                              label: '${_sliderVar.round()}',
                              onChanged: (double value) {
                                setState(() {
                                  _sliderVar = value;
                                  // _lastSliderVar = value;
                                  print(_sliderVar);
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Mode
                    Center(
                      child: BText("Mode", textColor, 18.0, FontWeight.bold),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: padding),
                      height: 120.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              BText("Auto", textColor.withOpacity(0.8), 14.0,
                                  FontWeight.bold),
                              SizedBox(height: 8.0),
                              Container(
                                width: 64.0,
                                height: 64.0,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(radius * 4),
                                    color: Colors.blue),
                                child: Center(
                                  child: BText(
                                      "A", Colors.white, 20.0, FontWeight.bold),
                                ),
                              )
                            ],
                          ),

                          //
                          Column(
                            children: <Widget>[
                              BText("Dry", textColor.withOpacity(0.4), 14.0,
                                  FontWeight.bold),
                              SizedBox(height: 8.0),
                              Container(
                                width: 64.0,
                                height: 64.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(radius * 4),
                                  color: Colors.black26.withOpacity(0.2),
                                ),
                                child: Center(
                                    child: IconCustom('assets/0203/dryicon.png',
                                        24.0, Colors.white)),
                              ),
                            ],
                          ),

                          //
                          Column(
                            children: <Widget>[
                              BText("Cool", textColor.withOpacity(0.4), 14.0,
                                  FontWeight.bold),
                              SizedBox(height: 8.0),
                              Container(
                                width: 64.0,
                                height: 64.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(radius * 4),
                                  color: Colors.black26.withOpacity(0.2),
                                ),
                                child: Center(
                                    child: IconCustom('assets/0203/fanicon.png',
                                        24.0, Colors.white)),
                              ),
                            ],
                          ),

//
                          Column(
                            children: <Widget>[
                              BText("Program", textColor.withOpacity(0.4), 14.0,
                                  FontWeight.bold),
                              SizedBox(height: 8.0),
                              Container(
                                width: 64.0,
                                height: 64.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(radius * 4),
                                  color: Colors.black26.withOpacity(0.2),
                                ),
                                child: Center(
                                    child: IconCustom(
                                        'assets/0203/programicon.png',
                                        24.0,
                                        Colors.white)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )

                    //
                  ],
                ),
              ),
            ),
          )

          // Navigation swipe up and power
          // Container(
          //   // alignment: Alignment.bottomCenter,
          //   height: 90.0,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(radius * 2),
          //       color: containerColor),
          //   child: Column(
          //     children: <Widget>[
          //       Container(
          //         margin: EdgeInsets.only(
          //             top: padding, right: padding * 11, left: padding * 11),
          //         height: 4.0,
          //         color: Colors.black87,
          //       ),
          //       Container(
          //         margin: EdgeInsets.only(left: padding * 1.2, right: padding),
          //         height: 54.0,
          //         child: Row(
          //           children: <Widget>[
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               mainAxisAlignment: MainAxisAlignment.spaceAround,
          //               children: <Widget>[
          //                 BText(
          //                     "A/C is ON", Colors.white, 18.0, FontWeight.w600),
          //                 BText("Tap to turn off or swipe up\nfor a fast setup",
          //                     textColor.withOpacity(0.4), 14.0, null)
          //               ],
          //             ),
          //             Spacer(),
          //             Container(
          //               width: 54.0,
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(padding * 4),
          //                   color: Colors.blue),
          //               child: Center(
          //                 child: Icon(
          //                   Icons.power_settings_new,
          //                   color: Colors.white,
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          //   // child: Placeholder(),
          // )
        ],
      ),
    );
  }
}
