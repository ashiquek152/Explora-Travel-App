import 'package:flutter/material.dart';

class TextCustomized extends StatelessWidget {
  const TextCustomized(
      {Key? key,
      required this.text,
      required this.textSize,
      required this.textColor,
      this.textAlign = TextAlign.center,
      this.fontStyle = FontStyle.normal,
      this.fontWeight = FontWeight.normal,
      this.fontFamily = "Ubuntu"})
      : super(key: key);

  final String text;
  final double textSize;
  final Color textColor;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final String fontFamily;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    // return Text(
    //   text,
    //   overflow: TextOverflow.ellipsis,
    //   maxLines: 2,
    //   textAlign: textAlign,
    //   style: GoogleFonts.roboto(
    //     color: textColor,
    //     fontSize: textSize,
    //     fontWeight: fontWeight,
    //     fontStyle: fontStyle,

    //   ),
    // );

    return Text(
      text,
      maxLines: 2,
      style: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: textColor,
          fontSize: textSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          fontFamily: fontFamily,
          ),
    );
  }
}
