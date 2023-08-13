import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../utils/ui/student_circle_widget.dart';

class ExamRsultPage extends StatelessWidget {
  const ExamRsultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.innerAppbar(text: 'Exam & Result'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SudentCircle.studentCircleWithContainer(
                h: 19.0,
                v: 16.0,
                url: 'asset/images/notiimg.png',
                context: context,
                top: 70,
                left: 70),
            SizedBox(
              height: 14,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
              child: Column(
                children: [
                  TextWidget(
                    text: 'Result',
                    color: blue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 3,
                    color: grey.withOpacity(.3),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: CustomStyle.boxDecoration(
                        color: grey.withOpacity(.2), radius: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextWidget(
                              text: 'Exam Name: ',
                              isTitle: true,
                              fs: 20,
                            ),
                            TextWidget(
                              text: ' Half yearly Exam',
                              fs: 18,
                            ),
                          ],
                        ),
                       SizedBox(height: 10,),

                       Row(
                         children: [

                           Row(
                             children: [
                                         TextWidget(
                                           text: 'Marks:',
                                           isTitle: true,
                                           fs: 20,
                                         ),
                                         TextWidget(
                                           text: ' 570',
                                           fs: 18,
                                         ),

                             ],
                           ),
                           Spacer(),
                           Row(
                             children: [
                               TextWidget(
                                 text: 'Marks:',
                                 isTitle: true,
                                 fs: 20,
                               ),
                               TextWidget(
                                 text: ' 570',
                                 fs: 18,
                               ),

                             ],
                           ),
                         ],
                       ),
                        SizedBox(height: 20,),

                        ElevatedButton(

                            onPressed: () {

                        },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 70)
                            ),
                            child: TextWidget(text: 'View Full Result',color: white,))

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
