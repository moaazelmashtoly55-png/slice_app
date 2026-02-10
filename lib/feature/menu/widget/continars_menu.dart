import 'package:flutter/material.dart';

class ContinarsMenu extends StatelessWidget {
  final String image;
   final String title;
  final Color titleColor;
 final void Function()? onTap;
  const ContinarsMenu({
    super.key,
    required this.image,
     required this.title,
    required this.titleColor, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          
          child: Text(
            title,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
        ),
        SizedBox(height: 5),
        InkWell(
          onTap:onTap,
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 33, 33, 33),
                  blurRadius: 8,
                  spreadRadius: 1,
                  offset: Offset(4, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12),
              child: Image.network(image, fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
