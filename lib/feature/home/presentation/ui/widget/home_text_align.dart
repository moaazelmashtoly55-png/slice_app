



import 'package:flutter/material.dart';

class HomeTextAlign extends StatelessWidget {
  final String title;
  const HomeTextAlign({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(alignment: AlignmentGeometry.centerLeft,
                  child: Text(title,
                  style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                  ),
                  ),
                );
  }
}