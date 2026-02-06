



import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/sections/presentation/ui/crepe/widget/item_section_list_viow_crepe.dart';

class BackGroundBodyCrepe extends StatelessWidget {
  final Color? gradientBackGround;
  const BackGroundBodyCrepe({super.key,  this.gradientBackGround});

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
      child: ItemSectionListViowCrepe(),
       );
  }
}