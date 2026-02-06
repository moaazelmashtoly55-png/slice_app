import 'package:flutter/material.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';
import 'package:slice_app/feature/sections/presentation/ui/widget/back_ground_body.dart';

class JuicesScreen extends StatelessWidget {
  const JuicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Juice",backgroundColor: const Color.fromARGB(255, 202, 252, 145),),
      body:BackGroundBody(gradientBackGround: Color.fromARGB(255, 202, 252, 145),)
    );
  }
}