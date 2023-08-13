import 'package:bafshaheen_app/config/route/all_routes.dart';
import 'package:bafshaheen_app/features/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'config/route/pages.dart';
import 'features/view/drawer_page/active_page.dart';
import 'features/view/navigation_page.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: AllRoutes.navigationPage,
      defaultTransition: Transition.fade,
      getPages: Pages.route,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'poppins'
      ),
     // home:  AcrtivePage(),
    );
  }
}

