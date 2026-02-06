


import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "My Order",backgroundColor: AppColor.primary,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              height: 220,
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200),bottomRight: Radius.circular(200)),
                      
                    ),
                   
                    
                  ),
                  Positioned(
                    bottom: -40,
                    left: 0,
                    right: 0,

                    child: Center(child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(150),
                      child: Image.network("https://tse4.mm.bing.net/th/id/OIP.SEfXqwWqK1NNMpH9ZmNrgwHaE8?rs=1&pid=ImgDetMain&o=7&rm=3",
                      height: 180,)
                      ),
                      )
                      )
                ],
              ),
            ),
            SizedBox(height: 60,),
            Text("Chicken Ranch Pizza",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),

             SizedBox(height: 20,),
            Text("A creamy ranch-based pizza topped with juicy chicken and melted mozzarella.",style: TextStyle(
              fontSize: 15,
              
            ),),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                   onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>ProductDetails()  ),
                    );
                    },
                  child: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.grey,blurRadius: 8,spreadRadius: 1,offset: Offset(0, 10),
                     )],
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(  12),
                    ),
                  
                    child:Center(child: Text("Add To Cart",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                      ),
                      )
                      ),
                    
                  ),
                ),
                Text("125.0 ",
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold),
            )
            ],
            ),
             SizedBox(height: 30,),
          ],
          
        ),
      ),
    );
  }
}