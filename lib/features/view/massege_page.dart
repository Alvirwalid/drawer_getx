import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/size_box.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/colors.dart';
import '../controller/textediting_controller.dart';

class MasseagePage extends StatelessWidget {
  MasseagePage({Key? key}) : super(key: key);
  static String routename = '/MasseagePage';

  SearchController controller = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: CustomStyle.boxDecoration(color: white, radius: 12),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              CustomWidget.textFormField(
                  textEditingController: controller.searchByName.value,
                  hintText: 'Search by name here'),
              sizedBoxHeight(h: 15),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Stack(
                                  children: [
                                    CustomWidget.circleAvatar(
                                        url: 'asset/images/ongoing.png',
                                        color: Colors.transparent,
                                        radius: 30),
                                    Positioned(
                                        top: 41,
                                        left: 46,
                                        child: Container(
                                          padding: const EdgeInsets.all(2),
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: white),
                                          child: Container(
                                            width: 12,
                                            height: 12,
                                            decoration: const BoxDecoration(
                                                color: green,
                                                shape: BoxShape.circle),
                                          ),
                                        ))
                                  ],
                                )),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              flex: 8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextWidget(
                                        text: 'Roger Hulg',
                                        isTitle: true,
                                      ),
                                      TextWidget(
                                        text: '15 min',
                                        color: grey,
                                        fs: 14,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          flex: 10,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              FittedBox(
                                                  child: TextWidget(
                                                text:
                                                    'Teacher-English 2nd paper',
                                                fs: 18,
                                              )),
                                              sizedBoxHeight(h: 10),
                                              const Text(
                                                'Hey,can i ask simething? i need your help please',
                                                maxLines: 2,
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          )),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: blue),
                                            child: const Center(
                                                child: Text(
                                              '5',
                                              style: TextStyle(
                                                  color: white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            )),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Divider(
                                    thickness: 3,
                                    color: bgColor,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  itemCount: 4),
            ],
          ),
        ),
      ),
    );
  }
}
