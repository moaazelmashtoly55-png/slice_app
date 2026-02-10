import 'package:flutter/material.dart';
import 'package:slice_app/core/model/product_model.dart';
import 'package:slice_app/core/nerwork/firebase_service.dart';
import 'package:slice_app/core/product.widget.dart/item_continar.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_app_bar.dart';

class CrepesScreen extends StatelessWidget {

  final Color? gradientBackGround;
  
  const CrepesScreen({super.key, this.gradientBackGround,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "crepe", backgroundColor: Color.fromARGB(255, 255, 216, 98)),

      body: Container(
        width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 255, 216, 98).withValues(alpha: 1),
            AppColor.lightgray,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
        child: SizedBox(
          width: double.infinity,
          child: FutureBuilder(
            future: FirebaseService.getCrepe(),
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
          FirebaseService.setCrepe(
            ProductModel(
              name: 'test',
              details: 'test',
              price: 500,
              imgurl:
                  'https://media.istockphoto.com/id/1393150881/photo/italian-pizza-margherita-with-cheese-and-tomato-sauce-on-the-board-on-grey-table-macro-close.jpg?s=612x612&w=0&k=20&c=kL0Vhg2XKBjEl__iG8sFv31WTiahdpLc3rTDtNZuD2g=',
            ),
          ).then((value) => print('crepe Added'));
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
