import 'package:flutter/material.dart';
import 'package:slice_app/core/model/product_model.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/product_details/presentation/ui/product_details.dart';

class ItemContinar extends StatelessWidget {
  final ProductModel product;
  const ItemContinar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(200, 45, 45, 45),
                  blurRadius: 15,
                  spreadRadius: 1,
                  offset: Offset(6, 10),
                ),
              ],
              color: AppColor.lightgray,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: Image.network(product.imgurl).image,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 150,
                        child: Text(
                          product.details,
                          style: TextStyle(fontSize: 13),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Align(
                        alignment: AlignmentGeometry.bottomLeft,
                        child: Text(
                          "${product.price} L.E",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetails(product: product,),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8,
                            spreadRadius: 1,
                            offset: Offset(0, 10),
                          ),
                        ],
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      
                      child: Center(
                        child: Text(
                          "buy ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
