import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';
import '../../../share_components/custom-button.dart';
import '../../../share_components/custom_widget.dart';
import '../../../share_components/size_box.dart';
import '../../../share_components/style.dart';
import '../../../utils/ui/custom_listview.dart';
import '../../../utils/ui/edit_header.dart';
import '../../../utils/ui/student_circle_widget.dart';
import '../../../utils/ui/text_widget.dart';
import '../../controller/press_controller.dart';
import '../../model/info.dart';

// ignore: must_be_immutable
class StudentInfoPage extends StatelessWidget {
  StudentInfoPage({Key? key}) : super(key: key);
  PressedState tabController = Get.put(PressedState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.innerAppbar(text: 'Student Info'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            sizedBoxHeight(h: context.height * 0.02),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SudentCircle.studentCircle(
                      url: 'asset/images/notiimg.png',
                      context: context,
                      top: context.height * 0.10,
                      left: context.width * 0.20),
                  TextWidget(
                    text: 'Fahmida',
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            sizedBoxHeight(h: context.height * 0.02),
            Container(
              height: context.height * 0.07,
              width: double.infinity,
              decoration:
                  CustomStyle.boxDecoration(color: blueLight, radius: 2),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Obx(() => CustomButton.tabButton(
                      btntext: 'Basic Info',
                      fct: () {
                        tabController.changeTab(1);
                      },
                      bgColor: tabController.selectedInfo.value == 1
                          ? blue
                          : Colors.transparent,
                      textColor: tabController.selectedInfo.value == 1
                          ? white
                          : black)),
                  const SizedBox(
                    width: 8,
                  ),
                  Obx(() => CustomButton.tabButton(
                      btntext: 'Guardian Info',
                      fct: () {
                        tabController.changeTab(2);
                      },
                      bgColor: tabController.selectedInfo.value == 2
                          ? blue
                          : Colors.transparent,
                      textColor: tabController.selectedInfo.value == 2
                          ? white
                          : black)),
                  const SizedBox(
                    width: 8,
                  ),
                  Obx(() => CustomButton.tabButton(
                      btntext: 'Contact Info',
                      fct: () {
                        tabController.changeTab(3);
                      },
                      bgColor: tabController.selectedInfo.value == 3
                          ? blue
                          : Colors.transparent,
                      textColor: tabController.selectedInfo.value == 3
                          ? white
                          : black)),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // Divider(
            //   color: blue.withOpacity(.3),
            // ),
            //
            Obx(() => tabController.selectedInfo.value == 1
                ? Container(
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Divider(
                          color: blue.withOpacity(.3),
                        ), SizedBox(height: 10,),

                        EditiHeader.editHeader(mainText:  'Personal Information',),

                        SizedBox(
                          height: 10,
                        ),
                        CustomListView.listView(
                            itemCount: perInfo.length,
                            context: context,
                            list: perInfo),
                        SizedBox(
                          height: 10,
                        ),
                        EditiHeader.editHeader(mainText:  'Institution Information',),

                        CustomListView.listView(
                            itemCount: instiInfo.length,
                            context: context,
                            list: instiInfo),
                      ],
                    ),
                  )
                : tabController.selectedInfo.value == 2
                    ? Container(
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Divider(
                              color: blue.withOpacity(.3),
                            ), SizedBox(height: 10,),
                            EditiHeader.editHeader(mainText:  'Father Information',),

                            SizedBox(
                              height: 15,
                            ),
                            FittedBox(
                              child: Row(
                                children: [
                                  Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'asset/images/parent.png'))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                        text: 'Rodrecis Lietez',
                                        color: black,
                                        isTitle: true,
                                        fs: 18,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          TextWidget(
                                            text: '+880123456789',
                                            color: grey,
                                            fs: 18,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 8),
                                            decoration:
                                                CustomStyle.boxDecoration(
                                                    color: blue.withOpacity(.2),
                                                    radius: 20),
                                            child: Text(
                                              'Primary',
                                              style: TextStyle(
                                                  color: blue, fontSize: 18),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextWidget(text: 'mail@gmail.com')
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomListView.listView(
                                itemCount: fInfo.length,
                                context: context,
                                list: fInfo),
                            SizedBox(
                              height: 15,
                            ),
                            EditiHeader.editHeader(mainText:  'Mother Information',),

                          const  SizedBox(
                              height: 15,
                            ),
                            FittedBox(
                              child: Row(
                                children: [
                                  Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'asset/images/mother.png'))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                        text: 'Nelle Cotnoir',
                                        color: black,
                                        isTitle: true,
                                        fs: 18,
                                      ),
                                      TextWidget(
                                        text: '+880123456789',
                                        color: grey,
                                        fs: 18,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextWidget(text: 'mail@gmail.com')
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                        decoration: CustomStyle.boxDecoration(color: white, radius: 10),
                        child: Column(
                          children: [   SizedBox(height: 10,),
                            Divider(
                              color: blue.withOpacity(.3),
                            ), SizedBox(height: 10,),

                          EditiHeader.editHeader(mainText: 'Present Address'),

                            SizedBox(
                              height: 10,
                            ),
                            CustomListView.listView(
                                itemCount: presentInfo.length,
                                context: context,
                                list: presentInfo),
                            SizedBox(
                              height: 20,
                            ),
                            EditiHeader.editHeader(mainText: 'Permanent Address'),
                            SizedBox(
                              height: 15,
                            ),
                            CustomListView.listView(
                                itemCount: permanentInfo.length,
                                context: context,
                                list: permanentInfo),
                          ],
                        ),
                      ))
          ],
        ),
      ),
    );
  }
}
