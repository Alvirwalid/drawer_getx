import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawController extends GetxController{
  // var dropDownKey = GlobalKey<ScaffoldState>().obs;

  void openDrawer(context){
    Scaffold.of(context).openDrawer();
  }
  void closeDrawer(context){
    Scaffold.of(context).closeDrawer();
    // Get.back();
    // dropDownKey.currentState!.openEndDrawer();
  }

}