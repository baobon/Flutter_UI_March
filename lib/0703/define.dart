
import 'package:flutter/material.dart';

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

/* 07/03/2020 */

 final Color backgroundColor = _colorFromHex("#0B0B0C");
 final Color containerColor = Color.fromRGBO(57, 58, 62, 1);
 final Color container2Color = Color.fromRGBO(36, 39, 46, 1);
 final Color titleColor = _colorFromHex("#DFDFDF"); 
 final Color textenableColor = Color.fromRGBO(213, 173, 118, 1);
 final Color iconColor = _colorFromHex("#97673B");
 final Color textdisableColor = _colorFromHex("#A1A1A1");
 final Color sliderColors = Color.fromRGBO(197, 162, 108, 1);

Color color_enable = Colors.red;
 