import 'package:bafshaheen_app/share_components/style.dart';
import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../share_components/custom_widget.dart';

class SudentCircle{
 static  studentCircle({required String url, required BuildContext context,required double top,required double left}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: CustomWidget.circleAvatar(url: url),
        ),


        Positioned(
            top:top,
            left:left,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Icon(
                Icons.check_circle,
                color: Colors.blue,
              ),
            ))
      ],
    );
  }

   static  studentCircleWithContainer({required double h,required v,
     required String url, required BuildContext context,required double top,required double left}) {
   return Container(
     width: double.infinity,
     margin: EdgeInsets.symmetric(horizontal: h,vertical: v),
     padding:  EdgeInsets.symmetric(vertical:10),
     decoration: CustomStyle.boxDecoration(color: white, radius: 10),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Stack(
           clipBehavior: Clip.none,
           children: [
             Container(
               padding: EdgeInsets.all(3),
               decoration: const BoxDecoration(
                 color: Colors.blue,
                 shape: BoxShape.circle,
               ),
               child: CustomWidget.circleAvatar(url: url),
             ),


             Positioned(
                 top:top,
                 left:left,
                 child: Container(
                   padding: const EdgeInsets.all(2),
                   decoration: const BoxDecoration(
                       shape: BoxShape.circle, color: Colors.white),
                   child: Icon(
                     Icons.check_circle,
                     color: Colors.blue,
                   ),
                 ))
           ],
         ),
         SizedBox(height: 8,),
         TextWidget(
           text: 'Fahmida',
           color: Colors.blue,
         )
       ],
     ),
   );
 }
}