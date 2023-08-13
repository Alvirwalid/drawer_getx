
import 'package:bafshaheen_app/config/route/all_routes.dart';
import 'package:bafshaheen_app/features/view/dashborad_page.dart';
import 'package:bafshaheen_app/features/view/drawer_page/about.dart';
import 'package:bafshaheen_app/features/view/home_page.dart';
import 'package:bafshaheen_app/features/view/inner_page/academicinfo.dart';
import 'package:bafshaheen_app/features/view/inner_page/attendence_pge.dart';
import 'package:bafshaheen_app/features/view/inner_page/exam_result_page.dart';
import 'package:bafshaheen_app/features/view/inner_page/notice_board.dart';
import 'package:bafshaheen_app/features/view/inner_page/sms.dart';
import 'package:bafshaheen_app/features/view/massege_page.dart';
import 'package:bafshaheen_app/features/view/profile_page.dart';
import 'package:get/get.dart';

import '../../features/view/drawer_page/help_support.dart';
import '../../features/view/drawer_page/setting.dart';
import '../../features/view/inner_page/school_info.dart';
import '../../features/view/inner_page/sms_history.dart';
import '../../features/view/inner_page/student_info.dart';
import '../../features/view/navigation_page.dart';
import '../../features/view/notification_ui.dart';

class Pages{
  static final route=[


    GetPage(name: AllRoutes.navigationPage, page: () => NavigationBaPage(),),
    GetPage(name: AllRoutes.homePage, page: () => HomePage(),),
    GetPage(name: AllRoutes.dashBoard, page: () => DashBoard(),),
    GetPage(name: AllRoutes.massagePage, page: () => MasseagePage(),),
    GetPage(name: AllRoutes.profilePage, page: () => ProfilePage(),),
    GetPage(name: AllRoutes.notificationPpage, page: () =>const NotificationUi(),),
    GetPage(name:AllRoutes.schoolInfoPage , page: () =>const SchoolInfo(),),
    GetPage(name:AllRoutes.studentInfoPage , page: () => StudentInfoPage(),),
    GetPage(name:AllRoutes.academicInfo , page: () => AcademicInfo(),),
    GetPage(name:AllRoutes.attendancePage , page: () => AttendencePage(),),
    GetPage(name:AllRoutes.examResultPage , page: () =>const ExamRsultPage(),),
    GetPage(name:AllRoutes.smsHistoryPage , page: () => SmsHistoryPage(),),
    GetPage(name:AllRoutes.noticeBoardPage , page: () =>const NoticeBoardPage(),),
    GetPage(name:AllRoutes.smsPage , page: () =>const SmsPage(),),
    GetPage(name:AllRoutes.helpSupportPage , page: () => HelpSupportPage(),),
    GetPage(name:AllRoutes.settingPage , page: () => SettingPage(),),
    GetPage(name:AllRoutes.aboutAppPage , page: () => AboutAppPage(),),




  ];
}