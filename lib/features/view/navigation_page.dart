import 'package:bafshaheen_app/config/route/all_routes.dart';
import 'package:bafshaheen_app/features/controller/navigat_controller.dart';
import 'package:bafshaheen_app/features/view/dashborad_page.dart';
import 'package:bafshaheen_app/features/view/home_page.dart';
import 'package:bafshaheen_app/features/view/massege_page.dart';
import 'package:bafshaheen_app/features/view/profile_page.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../../share_components/appbar.dart';
import '../../share_components/drawer.dart';

class NavigationBaPage extends GetView<NavigatController> {
  NavigationBaPage({Key? key}) : super(key: key);

  NavigatController controller = Get.put(NavigatController());




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: CustomAppbar(),
            preferredSize: Size(double.infinity, context.height * 0.08)),
        drawer: CustomDrawer(),
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute:AllRoutes.homePage,
          onGenerateRoute: controller.onGenerateRoute,
        ),


        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
          height: 80,
          decoration:const BoxDecoration(
            //color: blue,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(1),
                  topLeft: Radius.circular(1)
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() =>GestureDetector(

                onTap: () {
                  controller.changePage(0);

                },
                child: Column(
                  children: [
                    controller.currentIndex.value==0?Image.asset('asset/icon/Home-on.png',width: 20,height: 20,fit: BoxFit.contain,):   Image.asset('asset/icon/Home-off.png',width: 20,height: 20,fit: BoxFit.contain,),
                    SizedBox(height: 5,),
                    Text(  'Home',style: TextStyle(fontSize: 16,color:controller.currentIndex.value==0?blue: unselectColor,fontWeight: FontWeight.w500,),)
                  ],
                ),
              ) ),
              Obx(() => GestureDetector(
                onTap: () {
                  controller.changePage(1);

                },
                child: Column(
                  children: [
                    controller.currentIndex.value==1?Image.asset('asset/icon/Category-on.png',width: 20,height: 20,fit: BoxFit.contain,):  Image.asset('asset/icon/Category-off.png',width: 20,height: 20,fit: BoxFit.contain,),
                    SizedBox(height: 5,),
                    Text('Dashboard',style: TextStyle(fontSize: 16,color: controller.currentIndex.value==1?blue: unselectColor,fontWeight: FontWeight.w500),)
                  ],
                ),
              )),


              Obx(() =>  GestureDetector(
                onTap: () {
                  controller.changePage(2);

                },
                child: Column(
                  children: [
                    controller.currentIndex.value==2?Image.asset('asset/icon/Message-on.png',width: 20,height: 20,fit: BoxFit.contain,):   Image.asset('asset/icon/Message-off.png',width: 21,height: 21,fit: BoxFit.contain,),
                    SizedBox(height: 5,),
                    Text('Message',style: TextStyle(fontSize: 16,color: controller.currentIndex.value==2?blue: unselectColor,fontWeight: FontWeight.w500),)
                  ],
                ),
              ))
              ,
              Obx(() =>GestureDetector(
                onTap: () {
                  controller.changePage(3);

                },
                child: Column(
                  children: [
                    controller.currentIndex.value==3?Image.asset('asset/icon/Profile-on.png',width: 20,height: 20,fit: BoxFit.contain,):   Image.asset('asset/icon/Profile-off.png',width: 23,height: 23,fit: BoxFit.contain,),
                    SizedBox(height: 5,),
                    Text('Profile',style: TextStyle(fontSize: 16,color:  controller.currentIndex.value==3?blue: unselectColor,fontWeight: FontWeight.w500),)
                  ],
                ),
              ) )


            ],
          ),

        ),

    );
  }
}
