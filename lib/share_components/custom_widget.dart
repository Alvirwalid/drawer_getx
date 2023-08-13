import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors.dart';
import '../utils/ui/text_widget.dart';

class CustomWidget{

  static  customCard({required String url, required text,required Function fct}) {
    return InkWell(
      onTap: () {
        fct();
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow:  [
              BoxShadow(
                color: Color(0xffF9FAFC),
                spreadRadius: 8,
                blurRadius: 3
                //blurStyle: BlurStyle.inner,
              //  offset: Offset(0,0),



              )
            ],
            border: Border.all(
                color: Colors.transparent
            )

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              url,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              text,
              softWrap: false,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),



      ),
    );
  }

  static CircleAvatar circleAvatar({double radius=50, required String url,Color color=Colors.transparent}){
    return CircleAvatar(
      radius: radius,
    backgroundColor: color,
    backgroundImage: AssetImage(url),
    );
  }

  //material button
 static MaterialButton materialButton({required String url, required String text,required Function fct}) {
    return MaterialButton(
      onPressed: () {
        fct();
      },
      child: Row(
        children: [
          Image.asset(url,width: 35,height: 35,fit: BoxFit.contain,),
          SizedBox(
            width: 18,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
          )
        ],
      ),
    );
  }

  static AppBar innerAppbar({required String text}){
    return AppBar(
      elevation: 0,
      backgroundColor: white,
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: blue,
          )),
      title: TextWidget(
        text: text,
        color: blue,
      ),
    );
  }

  static TextFormField textFormField({required TextEditingController textEditingController,required String hintText}){
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        
          prefixIcon:const Icon(
            Icons.search,
            color: grey,
          ),
          filled: true,
          fillColor:const Color(0xffE6E6E6),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)
          )),
    );
  }



}