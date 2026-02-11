



import 'package:flutter/material.dart';
import 'package:slice_app/core/nerwork/firebase_service.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/home/presentation/ui/widget/home_items.dart';

class HomeListVeiwItem extends StatelessWidget {
  const HomeListVeiwItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
       child: FutureBuilder(
            future: FirebaseService.getbestOptions(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var list = snapshot.data!;
                    var item = list[index];
                    return HomeItems(product: item);
                  },
                  itemCount: snapshot.data!.length,
                  separatorBuilder: (context, index) => SizedBox(width: 20),
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
    );

  }
}