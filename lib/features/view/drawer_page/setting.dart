import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../icons.dart';
import '../../controller/press_controller.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';


class SettingPage extends StatelessWidget {
   SettingPage({Key? key}) : super(key: key);
   PressedState  controler=Get.put(PressedState());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomWidget.innerAppbar(text: 'Setting'),
      body: Container(
        padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: CustomStyle.boxDecoration(color: white, radius: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: CustomStyle.boxDecoration(color: bgColor, radius: 10),
              child: Row(
                children: [
                  Image.asset('asset/icon/language.png'),
                  const SizedBox(width: 10,),
                  TextWidget(text: 'Change Password',),
                  const Spacer(),
                  const  Icon(Icons.arrow_forward_ios,size: 30,color: blue,)
                ],
              ),
              

            ),
            const   SizedBox(height: 10,),
            Container(
              padding:const EdgeInsets.all(20),
              decoration: CustomStyle.boxDecoration(color: bgColor, radius: 10),
              child: Row(
                children: [
                  Image.asset('asset/icon/lock.png'),
                  const SizedBox(width: 10,),
                  TextWidget(text: 'language',),
                  const  Spacer(),

                  Obx(() =>InkWell(
                    onTap: () {
                      if(controler.switchbtn.value==true){
                        controler.changeSwitchState(false);
                      }else{
                        controler.changeSwitchState(true);


                      }


                    },
                    child: Container(
                      padding:const EdgeInsets.all( 4),

                      width: 150,
                      height: 45,
                      decoration: CustomStyle.boxDecoration(color: blue, radius: 50),
                      child: Stack(
                        children: [
                          Container(
                            padding:const EdgeInsets.symmetric(horizontal: 8),
                            width: 150,
                            height: 41,
                            decoration: CustomStyle.boxDecoration(color: Colors.transparent, radius: 50),child:  Row(
                            children: [
                              controler.switchbtn.value==false?const Text('English',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),):Text(''),
                             // Spacer(),
                              const   SizedBox(width: 50,),
                              controler.switchbtn.value==true? const Text('বাংলা',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500)):Text('')
                            ],
                          ) ,

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Visibility(
                                  visible:controler.switchbtn.value==true?true:false,

                                  child: Container(

                                      height: 41,
                                      width: 38,
                                      decoration: CustomStyle.boxDecoration(color: white, radius: 50)
                                  )


                              ),
                             
                              Visibility(
                                visible:controler.switchbtn.value==false?true:false,
                                child: Container(
                                    height: 41,
                                    width: 38,
                                    decoration: CustomStyle.boxDecoration(color: white, radius: 50)
                                ),
                              )


                            ],
                          )





                        ],
                      ),
                    ),
                  ) )


                  // Obx(() => LiteRollingSwitch(
                  //   value: controler.switchbtn.value,
                  //   width: 140,
                  //   textOn: 'English',
                  //   textOff: 'Bangla',
                  //   colorOn: blue,
                  //   colorOff: blue,
                  //   iconOn:Icons.add,
                  //   textOffColor: white,
                  //   textOnColor: white,
                  //   iconOff: Icons.add,
                  //
                  //   animationDuration: const Duration(milliseconds: 300),
                  //   onChanged: (bool state) {
                  //     print('turned ${(state) ? 'on' : 'off'}');
                  //   },
                  //   onDoubleTap: () {},
                  //   onSwipe: () {},
                  //   onTap: () {},
                  // ))


                ],
              ),


            ),
          ],
        ),
      ),
    );
  }
}
