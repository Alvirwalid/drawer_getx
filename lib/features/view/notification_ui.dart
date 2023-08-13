import 'package:bafshaheen_app/constant/colors.dart';
import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/size_box.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/ui/student_circle_widget.dart';

class NotificationUi extends StatelessWidget {
  const NotificationUi({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: IconButton(
          onPressed: () {
            Get.back(closeOverlays: true);
          },
          icon:const Icon(
            Icons.arrow_back_ios,
            color: blue,
          ),
        ),
        title: Text(
          'Notification',
          style: GoogleFonts.poppins(
              textStyle:const TextStyle(
                  color: blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 24)),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              sizedBoxHeight(h: context.height * 0.02),

              Container(
                width: double.infinity,

                margin:const EdgeInsets.symmetric(horizontal: 16),
                padding:const EdgeInsets.symmetric(vertical: 10),
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
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        bottom: 15
                      ),
                      decoration: CustomStyle.boxDecoration(color: bgColor, radius: 10),
                      padding: EdgeInsets.all(10),

                      child: Row(
                        children: [

                          Expanded(
                            flex: 2,
                              child:CircleAvatar(
                                  backgroundColor:const Color(0xffE2E2E5),
                                  child: Image.asset('asset/icon/notibell.png')), ),

                          Expanded(
                              flex: 12,
                              child:Column(

                                children: [
                                  Row(
                                    children: [
                                      TextWidget(
                                        text: 'Notification will be here',
                                        softWrap: true,
                                        fs: 20,
                                      ),
                                      TextWidget(
                                        softWrap: true,
                                        text: '15 min',
                                        fs: 16,
                                        isTitle: false,
                                        color: Colors.grey,
                                      )


                                    ],
                                  ),
                                  Text(
                                      'Ask to ask something? i need a solution to lorem ipsum ething? i need an apple',
                                      overflow: TextOverflow.ellipsis),
                                  //trailing: TextWidget(text: '15 min')



                                ],
                              ) ),
                        ],
                      ),

                    );



                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
