import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TextWidget extends StatelessWidget {
  TextWidget(
      {Key? key,
      required this.text,
      this.color = Colors.black,
      this.fs = 22,
      this.isTitle = false,
      this.softWrap = false})
      : super(key: key);
  String text;
  Color color;
  double fs;
  bool isTitle;
  bool softWrap;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        softWrap: softWrap,

        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: fs,
                color: color,
                fontWeight: isTitle ? FontWeight.w600 : FontWeight.normal)));
  }
}
