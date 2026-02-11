


import 'package:flutter/material.dart';
import 'package:slice_app/core/model/product_model.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/product_details/presentation/ui/product_details.dart';

class HomeItems extends StatelessWidget {
final ProductModel product;
  const HomeItems({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>ProductDetails(product: product) ),
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
                   child: Image.network(product.imgurl,
                                   width: 120,
                                   height: 100,
                                   ),
                 ),
              

              SizedBox(height: 10,),

             Align(alignment: AlignmentGeometry.centerLeft,
              child: Text(product.name,
              style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.bold),
              )
              ),

               SizedBox(height: 15,),
               
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                     onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>ProductDetails(product: product)  ),
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
                  Text("${product.price} L.E ",
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