  





// ignore_for_file: must_be_immutable

  import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';

class BottomLogin extends StatelessWidget {
  void Function()? onTap;
  final String logText;
   BottomLogin({super.key, this.onTap, required this.logText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
          width: 120,
            height: 40,
            decoration: BoxDecoration(
             color: AppColor.lightgray,
             borderRadius: BorderRadius.circular(10),
             border: Border.all(color: AppColor.primary,width: 2)
             
            ),
          child: Center(child: Text(logText,style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold),)),
          
          ),
        ),
        
      ],
    );
  }
}