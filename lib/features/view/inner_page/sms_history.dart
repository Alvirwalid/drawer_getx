import 'package:bafshaheen_app/constant/colors.dart';
import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/ui/text_widget.dart';
import '../../controller/textediting_controller.dart';

class SmsHistoryPage extends StatelessWidget {
  SmsHistoryPage({Key? key}) : super(key: key);
  SearchController controller = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: CustomWidget.innerAppbar(text: 'SMS History'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
              child: Column(
                children: [
                  CustomWidget.textFormField(
                      textEditingController: controller.searchSMS.value,
                      hintText: 'Search SMS here')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                  color: white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: CircleAvatar(
                              backgroundColor: grey.withOpacity(.3),
                              child: Image.asset('asset/icon/person.png'),
                            ),
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
                                    Text(
                                      'School Authority',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                    TextWidget(
                                      text: '15 min',
                                      color: grey,
                                      fs: 14,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        flex: 10,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              'Hey,can i ask simething? i need your help please',
                                              maxLines: 2,
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )),
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
                                                fontWeight: FontWeight.w500),
                                          )),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

              Divider(
                color: Color(0xffEEEEEE),
                      thickness: 3,
                    )

                    ],
                  ),
                ),
                // separatorBuilder: (context, index) => Divider(
                //       color: Color(0xffEEEEEE),
                //       thickness: 3,
                //     ),
                itemCount: 10),
          ],
        ),
      ),
    );
  }
}
