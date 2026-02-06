import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slice_app/core/theme/app_color.dart';

class ConIcon extends StatelessWidget {
  final String svg;
  const ConIcon({super.key, required this.svg,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: AppColor.primary),
        ),
        child: SvgPicture.asset(svg),
      ),
    );
  }
}
