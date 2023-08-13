import 'dart:math';

import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/size_box.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../utils/ui/student_circle_widget.dart';
import '../../utils/ui/text_widget.dart';
import '../controller/press_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  static String routename = '/ProfilePage';

  PressedState pressedState = Get.put(PressedState());

  List<Map<String, String>> studentInfo = [
    {'info': 'Class', "id": 'Vii'},
    {'info': 'Student Id', "id": '2001001'},
    {'info': 'Roll', "id": '123'},
    {'info': 'Gender', "id": 'Female'},
    {'info': 'Blood Group', "id": 'B+'},
    {'info': 'Date of Birth', "id": '13 Feb 2012'},
    {'info': 'Religion', "id": 'N/A'},
    {'info': 'Nationality', "id": 'Bangladeshi'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,

              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() => InkWell(
                        onTap: () {
                          if (pressedState.pressedBool.value == false) {
                            pressedState.changeStatus();
                          }
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding:const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: pressedState.pressedBool.value
                                        ? blue
                                        : black,
                                    shape: BoxShape.circle,
                                  ),
                                  child:CustomWidget.circleAvatar(url: 'asset/images/notiimg.png',radius: 40) ,
                                ),
                              sizedBoxHeight(h: 6),
                                TextWidget(
                                  text: 'Elizabeth',
                                  color: blue,
                                  fs: 18,
                                )
                              ],
                            ),
                            Visibility(
                              visible: pressedState.pressedBool.value,
                              child: Positioned(
                                  top: 50,
                                  left: 65,
                                  child: Container(
                                    //padding: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: white),
                                    child:const Icon(
                                      Icons.check_circle,
                                      color: blue,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      )),
                  Obx(() => InkWell(
                        onTap: () {
                          if (pressedState.pressedBool.value == true) {
                            pressedState.changeStatus();
                          }
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: pressedState.pressedBool.value
                                        ? black
                                        : blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child:CustomWidget.circleAvatar(url: 'asset/images/Patient.png',radius: 40)

                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextWidget(
                                  text: 'Jackson',
                                  color:blue,
                                  fs: 18,
                                )
                              ],
                            ),
                            Visibility(

                              visible: pressedState.pressedBool.value
                                  ? false
                                  : true,
                              child: Positioned(
                                  top: 50,
                                  left: 65,
                                  child: Container(
                                    //padding: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child:const Icon(
                                      Icons.check_circle,
                                      color: blue,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Obx(() => TextWidget(
                    text:pressedState.pressedBool.value? 'Moriah Elizabeth':'Jackson',
                    color: Colors.blue,
                    isTitle: true,
                  ))
                  ,
                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: studentInfo.length,
                    itemBuilder: (context, index) {
                      return Container(
                         padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                        // width: 100,
                        // height: 100,
                       // height: context.height*0.5,
                        color:
                            index.isEven ? Colors.white : Color(0xffF6F6F6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${studentInfo[index]['info']}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),

                            TextWidget(text: '${studentInfo[index]['id']}',fs: 20,)
                            //Text('${studentInfo[index]['id']}'),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
