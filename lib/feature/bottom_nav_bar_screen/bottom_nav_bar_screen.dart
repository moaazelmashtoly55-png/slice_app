



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/cart/screen/cart_screen.dart';
import 'package:slice_app/feature/home/presentation/ui/home_screen.dart';
import 'package:slice_app/feature/menu/screens/menu_screen.dart';
import 'package:slice_app/feature/my_account/screen/my_account_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

int currentIndex=0;

List<Widget>screens=[
HomeScreen(),
CartScreen(),
MenuScreen(),
MyAccountScreen(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
      onTap: (Index) {
       setState(() {
          currentIndex=Index;
       });
      },
      currentIndex:currentIndex ,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(169, 227, 227, 227),
        selectedIconTheme: IconThemeData(size: 30),
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.dark,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart",),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu_rounded),label: "Menu",),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "accuant",),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}