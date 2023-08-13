import 'package:flutter/material.dart';

import '../../../utils/ui/text_widget.dart';

class AcrtivePage extends StatelessWidget {
   AcrtivePage({Key? key}) : super(key: key);
ScrollController _scrollController=ScrollController();

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:   Scrollbar(
        thumbVisibility: true,
        thickness: 10,
        controller: _scrollController,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          controller: _scrollController,
          physics: BouncingScrollPhysics(),

          shrinkWrap: true,

          itemCount: 100,
          itemBuilder: (context, index) {
            return Row(
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
                Expanded(
                    flex: 1,
                    child: Image.asset(
                      'asset/icon/Viqarunnisa.png',
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 10,
                    child: TextWidget(
                      text: 'BAF Shaheen College',
                      fs: 20,
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
