import 'package:flutter/material.dart';
import 'package:slice_app/core/model/product_model.dart';
import 'package:slice_app/core/product.widget.dart/item_continar.dart';
import 'package:slice_app/core/theme/app_color.dart';

class ProductBackGroundBody extends StatelessWidget {
  final Color? gradientBackGround;
  final ProductModel product;
  const ProductBackGroundBody({super.key, this.gradientBackGround, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ?gradientBackGround?.withValues(alpha: 1),
            AppColor.lightgray,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ItemContinar(product: product,),
    );
  }
}
