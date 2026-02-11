import 'package:flutter/material.dart';
import 'package:slice_app/core/model/product_model.dart';
import 'package:slice_app/core/nerwork/firebase_service.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "cart",),
      floatingActionButton: IconButton(
        onPressed: () {
          FirebaseService.setbestOptions(
            ProductModel(
              name: 'pizza',
              details: 'mooooooooaz',
              price: 300,
              imgurl:
                  'https://media.istockphoto.com/id/1393150881/photo/italian-pizza-margherita-with-cheese-and-tomato-sauce-on-the-board-on-grey-table-macro-close.jpg?s=612x612&w=0&k=20&c=kL0Vhg2XKBjEl__iG8sFv31WTiahdpLc3rTDtNZuD2g=',
            ),
          ).then((value) => print('best Option Added'));
        },
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.white),
        ),
        icon: Icon(Icons.add, size: 30),
        color: AppColor.primary,
      ),
    );
  }
}