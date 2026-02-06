


import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/home/presentation/ui/widget/home_sections_item.dart';
import 'package:slice_app/feature/sections/presentation/ui/crepe/crepes_screen.dart';
import 'package:slice_app/feature/sections/presentation/ui/gernish/garnish_screen.dart';
import 'package:slice_app/feature/sections/presentation/ui/juice/juices_screen.dart';
import 'package:slice_app/feature/sections/presentation/ui/pizza/pizza_screen.dart';

class HomeContinarSection extends StatelessWidget {
  const HomeContinarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 370,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 203, 49),
        borderRadius: BorderRadius.circular(20)
      ),

        child: Column(
        children: [
          SizedBox(height: 15,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeSectionsItem(text1: 'Pizza',image1: "assets/images/image pizza.jpg",
                onTap: () {
                Navigator.push(
                              context,MaterialPageRoute(builder: (context) =>PizzaScreen()),
                );
                  },
                    ),
                  HomeSectionsItem(text1: 'Crepe',image1:"assets/images/image crepe.jpg" ,
                  onTap: () {
                  Navigator.push(
                              context,MaterialPageRoute(builder: (context) =>CrepesScreen()  ),
                    );

                },
                  ),
                    ],
                      ),
                   SizedBox(height: 10,),

                   Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       HomeSectionsItem(text1: 'Garnish',image1: "assets/images/fries.jpg",
                       onTap: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>GarnishScreen() ),
                );
                  },
                    ),
                    HomeSectionsItem(text1: 'Juice',image1:"assets/images/juice.jpg",
                    onTap: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>JuicesScreen()  ),
                );
                  },
                    ),
                      ],
                        ),
        ],
      ),
    );
  }
}