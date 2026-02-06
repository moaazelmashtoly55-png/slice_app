import 'package:flutter/material.dart';
import 'package:slice_app/core/nerwork/local_services.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';
import 'package:slice_app/feature/splash/splash_screen.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "My Account",),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            LocalServices.prefs?.remove("userToken");
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SplashScreen()), (e)=>false);
          }, child: Text("logout"))
        ],
      ),
    );
  }
}