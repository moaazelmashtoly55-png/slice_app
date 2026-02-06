


import 'package:flutter/material.dart';
import 'package:slice_app/core/nerwork/local_services.dart';
import 'package:slice_app/feature/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:slice_app/feature/home/presentation/ui/home_screen.dart';
import 'package:slice_app/feature/login/presentation/ui/login_screen.dart';

import 'package:slice_app/feature/splash/splash_screen.dart';

class SliceApp extends StatelessWidget {
  const SliceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "DM Serif Display",
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: initalScreen(),
    );
  }




Widget initalScreen(){
 if( LocalServices.prefs?.getString("userToken")==null){
  return SplashScreen();
 }else{return BottomNavBarScreen();}
 }

}