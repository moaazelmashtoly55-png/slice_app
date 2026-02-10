import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/sections/presentation/ui/appetizers/appetizers_screen.dart';
import 'package:slice_app/feature/sections/presentation/ui/crepe/crepes_screen.dart';
import 'package:slice_app/feature/sections/presentation/ui/juice/juices_screen.dart';
import 'package:slice_app/feature/sections/presentation/ui/pizza/pizza_screen.dart';

class HomeContinarMenu extends StatelessWidget {
  const HomeContinarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
           
             
               InkWell(
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PizzaScreen()),
                );
              },
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.lightgray,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 23, 23, 23),
                        blurRadius: 8,
                        spreadRadius: 1,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(8),
                    child: Image.asset(
                      "assets/images/image pizza.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CrepesScreen()),
                );
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.lightgray,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 23, 23, 23),
                      blurRadius: 6,
                      spreadRadius: 0,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  child: Image.asset(
                    "assets/images/chicken-crepe.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppetizersScreen()),
                );
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.lightgray,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 23, 23, 23),
                      blurRadius: 6,
                      spreadRadius: 0,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  child: Image.asset(
                    "assets/images/fries1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JuicesScreen()),
                );
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.lightgray,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 23, 23, 23),
                      blurRadius: 6,
                      spreadRadius: 0,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8),
              
                  child: Image.asset(
                    "assets/images/juice.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Bizza",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              "Crepe",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              "Appetizer",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              "juice",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
