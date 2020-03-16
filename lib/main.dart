import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_march/0203/testlaapp_screen1.dart';
import 'package:flutter_march/0203/testlaapp_screen2.dart';
import 'package:flutter_march/0703/smarthomeapp1.dart';
import 'package:flutter_march/0703/smarthomeapp2.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    // home: TeslaSmartAppSreen1(),      /* 02/03/2020 - 07/03/2020 Tesla Smart App */
    home: SmartHomeController(), /* 07/03/2020 Smart Home App */
  ));
}
