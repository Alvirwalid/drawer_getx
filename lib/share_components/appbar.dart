import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/controller/drawer_controller.dart';
import '../features/view/notification_ui.dart';
import '../utils/ui/text_widget.dart';

class CustomAppbar extends StatelessWidget {
   CustomAppbar({Key? key}) : super(key: key);
  DrawController drawerController=Get.put(DrawController());
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: Colors.white,
      leadingWidth: 50,
      leading: GestureDetector(
          onTap: () {
            drawerController.openDrawer(context);
          },
          child: Image.asset('asset/icon/menu.png')),
      title: Row(
        children: [
          Image.asset('asset/logo/image1.png'),
          SizedBox(width: 8,),
          TextWidget(
            text: 'BAF Shaheen College',
            fs: 20,
            isTitle: true,
          )
        ],
      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationUi(),));
          },
          child: Image.asset('asset/icon/noti.png',width: 40,height: 40,fit: BoxFit.contain,),
        ),
        SizedBox(width: 15,)
      ],
    );
  }
}

