import 'package:flutter/material.dart';
import 'package:slice_app/core/model/product_model.dart';
import 'package:slice_app/core/nerwork/firebase_service.dart';
import 'package:slice_app/core/product.widget.dart/item_continar.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';

class JuicesScreen extends StatelessWidget {
  const JuicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Juice",
        backgroundColor: const Color.fromARGB(255, 128, 88, 28),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 128, 88, 28).withValues(alpha: 1),
              AppColor.lightgray,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: FutureBuilder(
            future: FirebaseService.getJuice(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    var list = snapshot.data!;
                    var item = list[index];
                    return ItemContinar(product: item);
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
          FirebaseService.setJuice(
            ProductModel(
              name: 'test',
              details: 'test',
              price: 100,
              imgurl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6VkLepUOos9vSa162z-qK-uRTZJIfpodu4g&s',
            ),
          ).then((value) => print('juice Added'));
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
