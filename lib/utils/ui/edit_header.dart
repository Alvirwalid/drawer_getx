import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../share_components/style.dart';

class EditiHeader{
  static editHeader({required String mainText}){
    return Container(
      color: white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
             mainText,
            style:const TextStyle(
                color: blue,
                fontSize: 22,
                fontWeight: FontWeight.w500),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 15, vertical: 10),
            decoration: CustomStyle.boxDecoration(
                color: blue.withOpacity(.2), radius: 10),
            child: Row(
              children: const [
                   Icon(
                  Icons.edit_outlined,
                  color: blue,
                  size: 30,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                      color: blue, fontSize: 20),
                )
              ],
            ),
          )
        ],
      ),
    );

  }
}