import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../share_components/style.dart';
import '../../../utils/ui/student_circle_widget.dart';
import '../../../utils/ui/text_widget.dart';

class NoticeBoardPage extends StatelessWidget {
  const NoticeBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.innerAppbar(text: 'Notice Board'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SudentCircle.studentCircleWithContainer(
                h: 16.0,
                v: 16.0,
                url: 'asset/images/notiimg.png',
                context: context,
                top: 70,
                left: 80),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: CircleAvatar(
                                    backgroundColor: grey.withOpacity(.3),
                                    child: Image.asset('asset/icon/megaphone.png'),
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
                                            'Notice title will be here',
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
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Hey,can i ask simething? i need your help please',
                                        maxLines: 2,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 2,
                              color: Color(0xffEEEEEE),
                            )
                          ],
                        ),
                      ),

                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
