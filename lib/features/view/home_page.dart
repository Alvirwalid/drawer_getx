import 'package:bafshaheen_app/config/route/all_routes.dart';
import 'package:bafshaheen_app/features/controller/home_controller.dart';
import 'package:bafshaheen_app/share_components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/colors.dart';
import '../../share_components/custom_widget.dart';
import '../../share_components/drawer.dart';
import '../../share_components/style.dart';
import '../../utils/ui/text_widget.dart';

class HomePage extends GetResponsiveView<HomeComtroller> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              // width: 343,
              height: 114,

              decoration: CustomStyle.boxDecorationWithImage(
                  radius: 12, url: 'asset/images/homeimage.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                height: context.height * 0.65,
                decoration: CustomStyle.boxDecoration(color: white, radius: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    CustomWidget.customCard(
                        url: 'asset/icon/scl.png',
                        text: 'School info',
                        fct: () {
                          Get.toNamed(AllRoutes.schoolInfoPage);
                        }),
                    CustomWidget.customCard(
                        url: 'asset/icon/st.png',
                        text: 'Student info',
                        fct: () {
                          Get.toNamed(AllRoutes.studentInfoPage);
                        }),
                    CustomWidget.customCard(
                        url: 'asset/icon/acede.png',
                        text: 'Academic info',
                        fct: () {
                          Get.toNamed(AllRoutes.academicInfo);
                        }),
                    CustomWidget.customCard(
                        url: 'asset/icon/atten.png',
                        text: 'Attendance',
                        fct: () {
                          Get.toNamed(AllRoutes.attendancePage);
                        }),
                    CustomWidget.customCard(
                        url: 'asset/icon/exm.png',
                        text: 'Exam & result',
                        fct: () {
                          Get.toNamed(AllRoutes.examResultPage);
                        }),
                    CustomWidget.customCard(
                        url: 'asset/icon/history.png',
                        text: 'SMS History',
                        fct: () {
                          Get.toNamed(AllRoutes.smsHistoryPage);
                        }),
                    CustomWidget.customCard(
                        url: 'asset/icon/notic.png',
                        text: 'Notice Board',
                        fct: () {
                          Get.toNamed(AllRoutes.noticeBoardPage);
                        }),
                    CustomWidget.customCard(
                        url: 'asset/icon/sms.png',
                        text: 'SMS',
                        fct: () {
                          Get.toNamed(AllRoutes.smsPage);
                        }),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
