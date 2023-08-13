import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/size_box.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../constant/colors.dart';

class SchoolInfo extends StatelessWidget {
  const SchoolInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomWidget.innerAppbar(text: 'School Info'),



      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            sizedBoxHeight(h: 18),
            Container(
              height: context.height * 0.4,
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                          decoration: CustomStyle.boxDecorationWithImage(
                              radius: 12, url: 'asset/images/homeimage.png'))),
                  sizedBoxHeight(h: 30),
                  Expanded(
                      flex: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'BAF Shaheen College',
                              color: blue,
                              isTitle: true,
                            ),
                            sizedBoxHeight(h: 10),
                            const Text(
                              'BAF Shaheen College is a parminent school and college in '
                              'Dhaka,Bangladesh.It has 10,000 students in the dhaka '
                              'cantonment.',
                              maxLines: 3,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            sizedBoxHeight(h: 10),
                            const Divider(
                              thickness: 2,
                              color: Color(0xffF6F7F8),
                            ),
                            sizedBoxWidth(w: 12),
                            FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: blue,
                                    size: 35,
                                  ),
                                  const Text(
                                    'Jahangir Gate,Dhaka \n 1206',
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  sizedBoxWidth(w: 17),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7, vertical: 11),
                                    decoration: CustomStyle.boxDecoration(
                                        color: const Color(0xffE5F4FB),
                                        radius: 10),
                                    child: Row(
                                      children: [
                                        Image.asset('asset/icon/Send.png'),
                                        TextWidget(
                                          text: 'GET DIRECTION',
                                          color: blue,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            sizedBoxHeight(h: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              decoration: CustomStyle.boxDecoration(color: white, radius: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(text: 'Contact Info', isTitle: true),
                  sizedBoxHeight(h: 10),
                  Container(
                    height: context.height * 0.2,
                    child: FittedBox(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'asset/icon/phone.png',
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  TextWidget(
                                    text: 'Phone Number',
                                    isTitle: true,
                                    color: Colors.blue,
                                  ),
                                  sizedBoxWidth(w: 10),
                                ],
                              ),
                              // Divider(color: Colors.black,),
                              sizedBoxHeight(h: 10),
                              const Text(
                                '02-5831-500',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 22),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 3,
                            height: 100,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'asset/icon/Message.png',
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  TextWidget(
                                    text: 'Phone Number',
                                    isTitle: true,
                                    color: Colors.blue,
                                  ),
                                  sizedBoxWidth(w: 10),
                                ],
                              ),
                              // Divider(color: Colors.black,),
                              sizedBoxHeight(h: 10),
                              const Text(
                                '02-5831-500',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 22),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
