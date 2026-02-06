

import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backgroundColor: AppColor.lightgray,title: "menu",),
    );
  }
}