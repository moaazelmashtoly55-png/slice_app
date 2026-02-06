



import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColor.lightgray,
        leading: Image.asset("assets/images/logo.png",width: 70,height: 90,),
        title: Image.asset("assets/images/splash slice.png",width: 100,height: 100,),
        actions: [Icon(Icons.menu_rounded,size: 30,)],
      );
  }
}