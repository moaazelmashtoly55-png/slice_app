


import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/menu/screens/menu_screen.dart';

class HomeItems extends StatelessWidget {
  const HomeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>MenuScreen()  ),
              );
              },
      
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
        boxShadow: [BoxShadow(
            color: const Color.fromARGB(255, 33, 33, 33),blurRadius: 8,spreadRadius: 1,offset: Offset(4, 10)
                )
                ],
        color:AppColor.lightgray,
        borderRadius: BorderRadius.circular(8),
      
      
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
          children: [
             
                 ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                   child: Image.network("https://tse4.mm.bing.net/th/id/OIP.SEfXqwWqK1NNMpH9ZmNrgwHaE8?rs=1&pid=ImgDetMain&o=7&rm=3",
                                   width: 120,
                                   height: 100,
                                   ),
                 ),
              

              SizedBox(height: 10,),

             Align(alignment: AlignmentGeometry.centerLeft,
              child: Text(" Chicken Ranch",
              style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.bold),
              )
              ),

               SizedBox(height: 15,),
               
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                     onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>MenuScreen()  ),
                      );
                      },
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                          color: Colors.grey,blurRadius: 8,spreadRadius: 1,offset: Offset(0, 10),
                       )
                       ],
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(  12),
                      ),
                    
                      child:Center(child: Text("buy",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                        ),
                        )
                        ),
                      
                    ),
                  ),
                  Text("125 L.E ",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
              )
              ],
              ),
             
              
          
            ],
          ),
        ),
      ),
    );
  }
}