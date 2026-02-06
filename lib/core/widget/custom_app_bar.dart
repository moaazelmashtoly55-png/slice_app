

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? onTap;
  final String? title;
  final bool backBottom;
  final Color? backgroundColor;
  const CustomAppBar({super.key, this.onTap, this.title,  this.backBottom=true, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return 
       AppBar(
        centerTitle: true,
        backgroundColor:backgroundColor,
        title:Text(title!,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
        
        
        leading: backBottom? InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
                
              ),
              child: Icon(Icons.arrow_back_ios_new_outlined),
            ),
          ),
        ) :null ,
       
      );
    
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 60);
}
