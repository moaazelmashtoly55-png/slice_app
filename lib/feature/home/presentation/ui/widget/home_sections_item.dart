




// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';

class HomeSectionsItem extends StatelessWidget {

final String text1;
void Function()? onTap;
final String image1;

   HomeSectionsItem({super.key, required this.text1,  this.onTap, required this.image1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: const Color.fromARGB(255, 41, 41, 41),blurRadius: 10,spreadRadius: 1,offset: Offset(5, 6))]
              ),
              child: CircleAvatar(
                backgroundColor: AppColor.lightgray,
                radius: 65,
              ),
            ),

            InkWell(
              onTap:onTap ,
              child: CircleAvatar(
                backgroundColor:const Color.fromARGB(255, 255, 209, 70),
                radius: 55,
                  child: Align(alignment: AlignmentGeometry.topCenter,
                    child: CircleAvatar(backgroundImage:AssetImage(image1),
                    radius: 47),
                  ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(text1,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      ],
      //------------------------------
    ),
    
      ],

    );
  }
}