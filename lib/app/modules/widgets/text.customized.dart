import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCustomized extends StatelessWidget {
  TextCustomized(
      {Key? key,
      required this.text,
      required this.textSize,
      required this.textColor,
      this.textAlign=TextAlign.center,
      this.fontStyle = FontStyle.normal,
      this.fontWeight = FontWeight.normal,
      this.fontFamily = "RobotoMono"})
      : super(key: key);

  final String text;
  final double textSize;
  final Color textColor;
  FontWeight fontWeight;
  FontStyle fontStyle;
  final String fontFamily;
  TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.roboto(
        color: textColor,
        fontSize: textSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        
      ),
    );

    // Text(
    //   text,
    //   style:  TextStyle(
    //     color: textColor,
    //     fontSize: textSize,
    //     fontWeight: fontWeight,
    //     fontStyle: fontStyle,
    //     fontFamily: fontFamily
    //   ),
    // );
  }
}
