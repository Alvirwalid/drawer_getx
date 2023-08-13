import 'package:bafshaheen_app/constant/colors.dart';
import 'package:bafshaheen_app/features/model/info.dart';
import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:bafshaheen_app/utils/ui/custom_listview.dart';
import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

import '../../../utils/ui/student_circle_widget.dart';
import '../../controller/press_controller.dart';

class AcademicInfo extends StatelessWidget {
  AcademicInfo({Key? key}) : super(key: key);
  PressedState tabController = Get.put(PressedState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: CustomWidget.innerAppbar(text: 'Academic Info'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SudentCircle.studentCircleWithContainer(
                h: 16.0,
                v: 10.0,
                url: 'asset/images/notiimg.png',
                context: context,
                top: 70.0,
                left: 80.0),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'Basic Info',
                    color: blue,
                    isTitle: true,
                  ),
                  CustomListView.listView(
                      itemCount: basicInfo.length,
                      context: context,
                      list: basicInfo)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Obx(
                            () => Column(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      tabController.changeSub(1);
                                    },
                                    child: TextWidget(
                                      text: 'Subject List',
                                      color:
                                          tabController.subjectSelect.value == 1
                                              ? blue
                                              : black,
                                    )),
                                Divider(
                                  color: tabController.subjectSelect.value == 1
                                      ? blue
                                      : white,
                                  thickness: 5,
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 5,
                          child: Obx(
                            () => Column(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      tabController.changeSub(2);
                                    },
                                    child: TextWidget(
                                      text: 'Class Teacher Info',
                                      color:
                                          tabController.subjectSelect.value == 2
                                              ? blue
                                              : black,
                                    )),
                                Divider(
                                  color: tabController.subjectSelect.value == 2
                                      ? blue
                                      : white,
                                  thickness: 5,
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Obx(() {
                    return tabController.subjectSelect.value == 1
                        ? ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                              height: 10,
                            ),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: CustomStyle.boxDecoration(
                                    color: Color(0xffF6F6F6), radius: 10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 16),
                                child: FittedBox(
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 50,
                                        height: 50,
                                        decoration: CustomStyle.boxDecoration(
                                            color: blue, radius: 10),
                                        child: TextWidget(
                                          text: 'ENG',
                                          color: white,
                                          isTitle: true,
                                          fs: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'English 1st paper',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        decoration: CustomStyle.boxDecoration(
                                            color: blue.withOpacity(.1),
                                            radius: 10),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'asset/icon/download.png',
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            TextWidget(
                                              text: 'Syllabus',
                                              color: blue,
                                              fs: 18,
                                            ),
                                          ],
                                        ),
                                      ),

                                      // TextWidget(text: 'English 1st paper',isTitle: true,)
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        : Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 16),
                            decoration: CustomStyle.boxDecoration(
                                color: Color(0xffF6F6F6), radius: 10),
                            child: Column(
                              children: [
                                FittedBox(
                                  child: Row(
                                    children: [
                                      CustomWidget.circleAvatar(
                                          url: 'asset/images/ongoing.png',
                                          color: white,
                                          radius: 40),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextWidget(
                                            text: 'Teacher Name',
                                            isTitle: true,
                                          ),
                                          TextWidget(
                                            text: 'Designation',
                                            fs: 18,
                                          )
                                        ],
                                      ),
                                      // Spacer(),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 16, horizontal: 8),
                                        decoration: CustomStyle.boxDecoration(
                                            color: blue, radius: 20),
                                        child: TextWidget(
                                          text: 'MESSAGE',
                                          color: white,
                                          fs: 18,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Divider(
                                  thickness: 2,
                                  color: grey,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                FittedBox(
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                              'asset/icon/phonegrey.png'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          TextWidget(
                                            text: '+88 123456789',
                                            fs: 16,
                                            color: grey,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              'asset/icon/greymassege.png'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          TextWidget(
                                            text: 'mail@gmail.com',
                                            fs: 16,
                                            color: grey,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                  }),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
