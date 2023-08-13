import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../features/controller/press_controller.dart';

class CustomButton{
  PressedState tabController=Get.put(PressedState());


  static ElevatedButton tabButton(

      {required String btntext,required Function fct,required Color bgColor,required Color textColor}){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        primary: Colors.transparent,
       //animationDuration: Duration(seconds: 2),
       // foregroundColor: Colors.transparent,
        elevation: 0,
       // minimumSize:Size(w!, h!)
      ),
        onPressed: () {
          fct();


    },
        child: Text(btntext,style: TextStyle(color: textColor),));
  }
}