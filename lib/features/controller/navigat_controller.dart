import 'package:bafshaheen_app/config/route/all_routes.dart';
import 'package:bafshaheen_app/features/view/dashborad_page.dart';
import 'package:bafshaheen_app/features/view/home_page.dart';
import 'package:bafshaheen_app/features/view/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/massege_page.dart';

class NavigatController extends GetxController{
   var currentIndex = 0.obs;

  final pages = <String>[AllRoutes.homePage, AllRoutes.dashBoard, AllRoutes.massagePage,AllRoutes.profilePage];
  void changePage(int index) {
    print(index);
    currentIndex.value = index;
    update();
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings){
    if(settings.name==AllRoutes.homePage){
      return GetPageRoute(
        settings: settings,
        page: () => HomePage(),
      );
    }
    if(settings.name==AllRoutes.dashBoard){
      return GetPageRoute(
        settings: settings,
        page: () => DashBoard(),
      );
    }
    if(settings.name== AllRoutes.massagePage){
      return GetPageRoute(
        settings: settings,
          page: ()=> MasseagePage());
    }
    if(settings.name==AllRoutes.profilePage){
      return GetPageRoute(
        settings: settings,
        page: () =>  ProfilePage(),
      );
    }
    return null;
  }


}