import 'package:bafshaheen_app/utils/ui/text_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../constant/colors.dart';

class CustomListView {
  static ListView listView(
      {required int itemCount, required BuildContext context, required List<Map<String,String>> list}) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          color: index.isEven ?Color(0xffF6F6F6): white ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 7,
                  child: TextWidget(
                    text: '${list[index]['key']}',
                    isTitle: true,
                    fs: 18,
                  )),
              Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '${list[index]['value']}',
                      maxLines: 2,
                      softWrap: true,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: black, fontSize: 18),
                    ),
                  )),
//TextWidget(text: '${perInfo[index]['value']}',fs: 20,)
//Text('${studentInfo[index]['id']}'),
            ],
          ),
        );
      },
    );
  }
}
