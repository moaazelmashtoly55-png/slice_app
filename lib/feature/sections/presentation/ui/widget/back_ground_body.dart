



import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/sections/presentation/ui/widget/item_section_list_viow.dart';

class BackGroundBody extends StatelessWidget {
  final Color? gradientBackGround;
  const BackGroundBody({super.key,  this.gradientBackGround});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
           ?gradientBackGround?.withValues(alpha: 1),
           AppColor.lightgray,
          ],
          begin: Alignment.topCenter,end: Alignment.bottomCenter
          )
        ),
      child: ItemSectionListViow(),
       );
  }
}