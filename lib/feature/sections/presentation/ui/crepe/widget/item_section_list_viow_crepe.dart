import 'package:flutter/material.dart';
import 'package:slice_app/core/nerwork/firebase_service.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/sections/presentation/ui/crepe/widget/item_continar_crepe.dart';

class ItemSectionListViowCrepe extends StatelessWidget {
  const ItemSectionListViowCrepe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FutureBuilder(
        future: FirebaseService.getCrepe(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index)
                { var list=snapshot.data!;
                  var item= list[index];
                   return ItemContinarCrepe(crepe: item);},
              itemCount: snapshot.data!.length,
              separatorBuilder: (context, index) => SizedBox(height: 15),
            );
          } else if (snapshot.hasError) {
            return Text('Error');
          } else {
            return Center(child: CircularProgressIndicator(color: AppColor.primary,));
          }
        },
      ),
    );
  }
}
