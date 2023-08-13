import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController{
  final Rx<TextEditingController> searchByName = TextEditingController().obs;
  final Rx<TextEditingController> searchSMS = TextEditingController().obs;



}