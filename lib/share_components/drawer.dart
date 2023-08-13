import 'package:bafshaheen_app/config/route/all_routes.dart';
import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors.dart';
import '../features/controller/drawer_controller.dart';
import '../features/view/navigation_page.dart';
import '../utils/ui/text_widget.dart';

class CustomDrawer extends StatelessWidget {
   CustomDrawer({GlobalKey<ScaffoldState>? key}) : super(key: key);

  DrawController drawerController=Get.put(DrawController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 300,
      decoration: const BoxDecoration(

          borderRadius: BorderRadius.only(topRight: Radius.circular(50))),
      child: Column(
        children: [
          Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(
                    color: blue,
                    borderRadius:
                    BorderRadius.only(topRight: Radius.circular(50))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {
                              print('object');

                              drawerController.closeDrawer(context);
                            // Get.back();
                            },
                            icon: const Icon(
                              Icons.close,
                              color: white,
                              size: 40,
                            ))),
                    CustomWidget.circleAvatar(url: 'asset/images/parent.png'),

                    SizedBox(
                      height: 20,
                    ),
                    TextWidget(
                      text: 'Parent Name',
                      color: Colors.white,
                      fs: 24,
                    ),
                    TextWidget(
                      text: '010 1023 9942',
                      color: Colors.white,
                      fs: 18,
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 10,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),


                    CustomWidget.materialButton(url: 'asset/icon/Home.png', text: 'Home',fct: (){
                    Get.back();

                    }),

                    SizedBox(height: 25,),
                    CustomWidget.materialButton(
                        url: 'asset/icon/help1.png', text: 'Help & Support',fct: (){
                          Get.toNamed(AllRoutes.helpSupportPage);
                    }),
                    SizedBox(height: 25,),
                    CustomWidget.materialButton(
                        url: 'asset/icon/setting.png', text: 'Setting',fct: (){
                          Get.toNamed(AllRoutes.settingPage);
                    }),
                    SizedBox(height: 25,),
                    CustomWidget.materialButton(
                        url: 'asset/icon/about.png', text: 'About App',fct: (){
                          Get.toNamed(AllRoutes.aboutAppPage);
                    }),
                    SizedBox(height: 25,),
                    CustomWidget.materialButton(
                        url: 'asset/icon/logout.png', text: 'Logout',fct: (){}),
                  ],
                ),
                // child: Column(
                //   children: [],
                // ),
              ))
        ],
      ),
    );
  }

}
