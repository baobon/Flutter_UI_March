import 'package:flutter/material.dart';

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

/* 02/03/2020 */
final Color radiusCircleColor = _colorFromHex("#212121").withOpacity(0.4);
final Color outlineCircleColor = _colorFromHex("#484848").withOpacity(0.2);
final Color containerColor = _colorFromHex("#25282D").withOpacity(0.2);
final Color navigatorColor = _colorFromHex("#25282D");
final Color textColor = Colors.white;
final Color hinttextColor = Colors.white60;
final Color hintIconColor = Colors.white60;
final Color circleColor = Colors.blue;
