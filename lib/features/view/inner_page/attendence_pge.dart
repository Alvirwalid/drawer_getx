import 'package:bafshaheen_app/share_components/appbar.dart';
import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../constant/colors.dart';
import '../../../utils/ui/student_circle_widget.dart';
import '../../controller/press_controller.dart';
import '../../model/info.dart';

class AttendencePage extends StatefulWidget {
  AttendencePage({Key? key}) : super(key: key);

  @override
  State<AttendencePage> createState() => _AttendencePageState();
}

class _AttendencePageState extends State<AttendencePage> {
  PressedState tabController = Get.put(PressedState());
  final List<ChartData> chartData = [
    ChartData('Present', 0.60, green),
    ChartData('Absent', 0.60, crimson),
    ChartData('Holiday', 0.25, dartBlue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget.innerAppbar(text: 'Attendece'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SudentCircle.studentCircleWithContainer(
                h: 16.0,
                v: 10.0,
                url: 'asset/images/notiimg.png',
                context: context,
                top: 70,
                left: 70),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: CustomStyle.boxDecoration(color: white, radius: 10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 54),
                    child: FittedBox(
                      child: ToggleSwitch(
                        minWidth: 150.0,
                        minHeight: 60,
                        cornerRadius: 25.0,
                        fontSize: 22,
                        activeBgColors: [
                          [blue],
                          [blue]
                        ],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        initialLabelIndex: 1,
                        totalSwitches: 2,
                        labels: ['Monthly', 'Yearly'],
                        radiusStyle: true,
                        onToggle: (index) {
                          tabController.changeToggle(index!);
                        },
                      ),
                    ),
                  ),
                  Obx(() => tabController.toggleSwitch.value==0?   TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    onFormatChanged: (format) {},
                  ):
                  Container(
                    width: double.infinity,
                    //height: context.height*0.25,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(10),
                    decoration:
                    CustomStyle.boxDecoration(color: white, radius: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: TextWidget(
                            text: "Monthly  Attendance Statistic",
                            color: Colors.blue,
                          ),
                        ),
                        TextWidget(
                          text: "In 28 days",
                          color: Colors.black,
                          isTitle: false,
                        ),
                        Center(
                            child: Container(
                                child: SfCircularChart(series: <CircularSeries>[
                                  // Render pie chart
                                  PieSeries<ChartData, String>(
                                      dataSource: chartData,
                                      pointColorMapper: (ChartData data, _) =>
                                      data.color,
                                      xValueMapper: (ChartData data, _) => data.x,
                                      yValueMapper: (ChartData data, _) => data.y,
                                      dataLabelMapper: (ChartData data, _) =>
                                      "${(data.y * 100.0).toStringAsFixed(0)}%",
                                      dataLabelSettings: DataLabelSettings(
                                          isVisible: true,
                                          textStyle: TextStyle(fontSize: 22)))
                                ]))),
                        Container(
                          height: 100,
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                              width: 20,
                            ),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: chartData.length,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 10.0,
                                      height: 10.0,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: chartData[index].color),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        TextWidget(
                                          text:
                                          '${(chartData[index].y * 100).toStringAsFixed(0)}%',
                                        ),
                                        TextWidget(
                                            text: '${chartData[index].x}')
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Divider(
                          thickness: 2,
                          color: grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: 'Total Day:',
                              isTitle: true,
                            ),
                            Spacer(),
                            TextWidget(
                              text: '12 ',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text:'Total Present',

                            ),
                            Spacer(),
                            TextWidget(
                              text: '12 ',color: green,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text:'Total Absent',

                            ),
                            Spacer(),
                            TextWidget(
                              text: '10 ',color: crimson,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text:'Total Holiday',

                            ),
                            Spacer(),
                            TextWidget(
                              text: '10 ',color: Colors.cyan,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
