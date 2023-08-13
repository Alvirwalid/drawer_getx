import 'package:bafshaheen_app/share_components/custom_widget.dart';
import 'package:bafshaheen_app/share_components/style.dart';
import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/colors.dart';

class HelpSupportPage extends StatelessWidget {
  const HelpSupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomWidget.innerAppbar(text: 'Help & Support'),
      
      body: SingleChildScrollView(
        physics:const NeverScrollableScrollPhysics(),
        child: Container(
          height: context.height*0.9,
          margin:const EdgeInsets.symmetric(vertical: 16),
          padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          decoration: CustomStyle.boxDecoration(color: white, radius: 10),
          child: ListView.separated(
            separatorBuilder: (context, index) =>const SizedBox(height: 10,),
            shrinkWrap: true,
            physics:const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
            return Container(
              padding:const EdgeInsets.all(15),
              decoration: CustomStyle.boxDecoration(color: bgColor, radius: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                            Text(

                          'How to use the feature title will be here '
                             ,maxLines: 1,softWrap: true,
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),


                        SizedBox(height: 10,),
                        Text(

                          'Lorem ipsum dolor to sit amet concetLorem Lorem ipsum dolor to sit amet concetLorem  sit amet concetLorem Lorem ipsum dolor to sit amet concetLorem  sit amet concetLorem Lorem ipsum dolor to sit amet concetLorem  sit amet concetLorem Lorem ipsum dolor to sit amet concetLorem '
                              'concet',maxLines: 1,overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14),),
                       // TextWidget(text: 'Lorem ipsum dolor to sit amet concetLorem ipsum dolor to sit amet concetLorem ipsum dolor to sit amet concet'),

                      ],
                    ),
                  ),
                  //SizedBox(width: 10,),
                  const  Icon(Icons.arrow_forward_ios,size: 25,),



                ],
              ),
            );
          },),
        ),
      ),
    );
  }
}
