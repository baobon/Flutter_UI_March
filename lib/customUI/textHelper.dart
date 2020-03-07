import 'package:flutter/material.dart';

class BText extends StatelessWidget {
  String bText;
  Color bColorData;
  double bFontSize;
  FontWeight bFontWeight;

  BText(
   this.bText,
   this.bColorData,
   this.bFontSize,
   this.bFontWeight
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      bText,
      style: TextStyle(
        color: bColorData,
        fontSize: bFontSize,
        // letterSpacing: 1.0,
        fontWeight: bFontWeight,
      ),
    );
  }
}
// }
