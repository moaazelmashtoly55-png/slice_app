import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';
import 'package:slice_app/feature/menu/widget/continars_menu.dart';
import 'package:slice_app/feature/sections/presentation/ui/appetizers/appetizers_screen.dart';
import 'package:slice_app/feature/sections/presentation/ui/crepe/crepes_screen.dart';
import 'package:slice_app/feature/sections/presentation/ui/juice/juices_screen.dart';
import 'package:slice_app/feature/sections/presentation/ui/pizza/pizza_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: AppColor.primary,
        title: "menu",
        backBottom: false,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              ContinarsMenu(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PizzaScreen()));
                },
                image:
                    "https://www.andy-cooks.com/cdn/shop/articles/20240223053129-andy-20cooks-20-20pizza-20margherita.jpg?v=1708671685",
                title: "Pizza",
                titleColor: AppColor.primary,
              ),
              SizedBox(height: 10),
              ContinarsMenu(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CrepesScreen()));
                },
                image:
                    "https://images.deliveryhero.io/image/talabat/MenuItems/Meat_Fajita_Crepe_637486816053183445.jpg",
                title: "Crepe",
                titleColor: Color.fromARGB(255, 216, 176, 55),
              ),
              SizedBox(height: 10),
              ContinarsMenu(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AppetizersScreen()));
                },
                image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtciQEp-R0bpGuvcAim3ZoFSwC-GVKNgmS2A&s",
                title: "Appetizers",
                titleColor: Color.fromARGB(255, 255, 122, 45),
              ),
              SizedBox(height: 10),
              ContinarsMenu(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>JuicesScreen()));
                },
                image:
                    "https://assets.wsimgs.com/wsimgs/ab/images/dp/recipe/202543/0001/img30l.jpg",
                title: "Juice",
                titleColor: Color.fromARGB(255, 142, 90, 31),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
