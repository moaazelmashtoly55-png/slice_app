import 'package:flutter/material.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "cart",),
    );
  }
}