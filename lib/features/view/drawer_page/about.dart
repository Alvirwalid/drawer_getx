import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';

import 'active_page.dart';

class AboutAppPage extends StatelessWidget {
  AboutAppPage({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.innerAppbar(text: 'About App'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: CustomStyle.boxDecoration(color: white, radius: 10),
                child: Column(
                  children: [
                    const Text(
                      'ODHYYON is education based app for schools, students and parents of Bangladesh.  This apps '
                      'have innovative features to make the students life easier & faster.  Using this App, students can '
                      'easily manage their information shared with their school/colleges.',
                      maxLines: 12,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: grey,
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              TextWidget(
                                text: '10K +',
                                color: blue,
                                isTitle: true,
                                fs: 20,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              TextWidget(text: 'Download')
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              TextWidget(
                                text: '360K +',
                                color: blue,
                                isTitle: true,
                                fs: 20,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              TextWidget(
                                text: 'Active School',
                                fs: 20,
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              TextWidget(
                                text: '10K +',
                                color: blue,
                                isTitle: true,
                                fs: 20,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              TextWidget(
                                text: 'Total Student',
                                fs: 20,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                decoration: CustomStyle.boxDecoration(color: white, radius: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextWidget(text: 'Our All Active School'),
                        SizedBox(
                          width: 10,
                        ),
                        TextWidget(
                          text: '(360)',
                          color: grey.withOpacity(0.9),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 1.5,
                      color: grey.withOpacity(1),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: TextWidget(
                                    text: index < 9
                                        ? '0${index + 1}'
                                        : ' ${index + 1}',
                                    isTitle: true,
                                    fs: 16,
                                  ),
                                ),
                                // SizedBox(
                                //   width: 6,
                                // ),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(.16),
                                                blurRadius: 12,
                                                spreadRadius: 1)
                                          ],
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'asset/icon/Viqarunnisa.png'),
                                              fit: BoxFit.contain)),
                                    )),
                                // const SizedBox(
                                //   width: 10,
                                // ),
                                Expanded(
                                    flex: 10,
                                    child: TextWidget(
                                      text: 'BAF Shaheen College',
                                      fs: 18,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            )
                          ],
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
