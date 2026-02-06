



import 'package:flutter/material.dart';
import 'package:slice_app/feature/home/presentation/ui/widget/home_items.dart';

class HomeListVeiwItem extends StatelessWidget {
  const HomeListVeiwItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  HomeItems(),
        itemCount: 4,
        separatorBuilder: (context, index) => SizedBox(width: 25),
      ),
    );
  }
}