


import 'package:flutter/material.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';
import 'package:slice_app/feature/sections/presentation/ui/widget/back_ground_body.dart';

class GarnishScreen extends StatelessWidget {
  const GarnishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Garnish",backgroundColor: Colors.orangeAccent,),
      body: BackGroundBody(gradientBackGround: Colors.orangeAccent,),
    );
  }
}