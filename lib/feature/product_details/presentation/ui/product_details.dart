


import 'package:flutter/material.dart';
import 'package:slice_app/core/model/product_model.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';
import 'package:slice_app/feature/cart/screen/cart_screen.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel product;
  const ProductDetails({super.key, required this.product});

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
                      child: Image.network(product.imgurl,
                      height: 180,)
                      ),
                      )
                      )
                ],
              ),
            ),
            SizedBox(height: 60,),
            Text(product.name,style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),

             SizedBox(height: 20,),
            Text(product.details,style: TextStyle(
              fontSize: 15,
              
            ),),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                   onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>CartScreen()  ),
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
                Text("${product.price} L.E",
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