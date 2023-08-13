import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomStyle{
  static BoxDecoration boxDecoration({required Color color,required double radius}){
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color

    );
  }

  static BoxDecoration boxDecorationWithImage({ Color color=Colors.transparent,required double radius,required String url}){
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(url)
      )
    );
  }
}