import 'package:bafshaheen_app/share_components/size_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../constant/colors.dart';
import '../../share_components/style.dart';
import '../../utils/ui/student_circle_widget.dart';
import '../../utils/ui/text_widget.dart';
import '../model/info.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);

  final List<ChartData> chartData = [
    ChartData('Present', 0.60, green),
    ChartData('Absent', 0.60, crimson),
    ChartData('Holiday', 0.25, dartBlue),
  ];

  List<bool> isGoing = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              sizedBoxHeight(h: 10),
              SudentCircle.studentCircleWithContainer(
                  h: 16.0,
                  v: 10.0,
                  url: 'asset/images/notiimg.png',
                  context: context,
                  top: 70.0,
                  left: 80.0),
              sizedBoxHeight(h: 10),
              Container(
                width: double.infinity,
                //height: context.height*0.25,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(10),
                decoration: CustomStyle.boxDecoration(color: white, radius: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "Today's Attendance Status",
                      color: Colors.blue,isTitle: true,
                    ),
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'In Time',
                              color: Color(0xff616161),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('0.9:50 am',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22))

                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(text: 'Out Time', color: Color(0xff616161)),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('0.4:20 pm',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22))

                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              sizedBoxHeight(h: 10),
              Container(
                width: double.infinity,
                //height: context.height*0.25,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(10),
                decoration: CustomStyle.boxDecoration(color: white, radius: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: "Monthly  Attendance Statistic",
                      color: Colors.blue,
                    ),
                    TextWidget(
                      text: "In 24 days",
                      color: Colors.black,
                      isTitle: false,
                    ),
                    Center(
                        child: Container(
                            child: SfCircularChart(series: <CircularSeries>[
                      // Render pie chart
                      PieSeries<ChartData, String>(
                          dataSource: chartData,
                          pointColorMapper: (ChartData data, _) => data.color,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          dataLabelMapper: (ChartData data, _) =>
                              "${(data.y * 100.0).toStringAsFixed(0)}%",
                          dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                              textStyle: TextStyle(fontSize: 22)))
                    ]))),
                    Container(
                      height: 80,
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
                             // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: chartData[index].color),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${(chartData[index].y * 100).toStringAsFixed(0)}%',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22)),

                                    TextWidget(text: '${chartData[index].x}')
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                //height: context.height*0.25,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(10),
                decoration: CustomStyle.boxDecoration(color: white, radius: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: "Today's Class",
                          isTitle: true,
                          fs: 24,
                        ),
                        TextWidget(
                          text: "12 March",
                          color: Color(0xff4E5567),
                          fs: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(8),
                          decoration: CustomStyle.boxDecoration(
                              color: const Color(0xffE5F7F6), radius: 10),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextWidget(
                                      text: 'Subject Name',
                                      color: Colors.blue,
                                      isTitle: true,
                                    ),

                                    // BoxDecoration(
                                    //     color:isGoing[index]? Color(0xffE0AA00):Color(0xff53B45D),
                                    //     borderRadius: BorderRadius.circular(20))
                                    Container(
                                        decoration: CustomStyle.boxDecoration(
                                            color: isGoing[index]
                                                ? Color(0xffE0AA00)
                                                : Color(0xff53B45D),
                                            radius: 20),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 6),
                                          child: TextWidget(
                                            text: isGoing[index]
                                                ? 'Ongoing'
                                                : 'Upcoming',
                                            fs: 18,
                                          ),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                TextWidget(
                                  text: '08:15 am,28 Feb 2021',
                                  color: Color(0xff777777),
                                  fs: 18,
                                ),
                                sizedBoxHeight(h: 5),
                                const Divider(
                                  color: Color(0xffDBDBDB),
                                  thickness: 1,
                                ),
                                sizedBoxHeight(h: 5),
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 25,
                                      backgroundImage: AssetImage(
                                          'asset/images/ongoing.png'),
                                    ),
                                    sizedBoxHeight(h: 10),
                                    TextWidget(
                                      text: 'Techer Name',
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
