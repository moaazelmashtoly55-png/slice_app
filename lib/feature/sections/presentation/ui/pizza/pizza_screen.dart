import 'package:flutter/material.dart';
import 'package:slice_app/core/model/product_model.dart';
import 'package:slice_app/core/nerwork/firebase_service.dart';
import 'package:slice_app/core/product.widget.dart/back_ground_body_crepe.dart';
import 'package:slice_app/core/product.widget.dart/item_continar.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';

class PizzaScreen extends StatelessWidget {
  PizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Pizza", backgroundColor: AppColor.primary),

      body: Container(
         width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.primary.withValues(alpha: 1),
            AppColor.lightgray,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
        child: SizedBox(
          width: double.infinity,
          child: FutureBuilder(
            future: FirebaseService.getPizza(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    var list = snapshot.data!;
                    var item = list[index];
                    return  ItemContinar(product: item);
                  },
                  itemCount: snapshot.data!.length,
                  separatorBuilder: (context, index) => SizedBox(height: 15),
                );
              } else if (snapshot.hasError) {
                return Text('Error');
              } else {
                return Center(
                  child: CircularProgressIndicator(color: AppColor.primary),
                );
              }
            },
          ),
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          FirebaseService.setPizza(
            ProductModel(
              name: 'test',
              details: 'test',
              price: 250,
              imgurl:
                  'https://img.freepik.com/premium-photo/top-view-bbq-chicken-pizza-with-tomatoes-paprika-isolated-white-background_79762-3009.jpg',
            ),
          ).then((value) => print('pizza Added'));
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
