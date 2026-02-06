import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';

class CustomBottom extends StatelessWidget {
  final String title;
  final Color? backgroundcolor;
  final Color? textcolor;
  final void Function()? onTap;
  final double? width;
  final double? height;
  const CustomBottom({super.key,
   required this.title,
    this.backgroundcolor,
    this.textcolor,
    this.onTap,
    this.width,
    this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        
      child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.symmetric(vertical: 19),
          alignment: Alignment.center,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundcolor ?? AppColor.primary,
        ),
        child: Text(title, style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color:textcolor?? const Color.fromARGB(255, 0, 0, 0),
        )
        ),
      ),
    );
  }
}