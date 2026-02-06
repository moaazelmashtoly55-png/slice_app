import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';

class CustomTextFormFeild extends StatefulWidget {
  final bool isPassword;
 final String? hintText;
  final String labelText;
  final IconData? iconText;
  final double? width;
  final double? height;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomTextFormFeild({
    super.key,
    this.isPassword = false,  required this.labelText, this.width, this.height,this.iconText, this.controller, this.validator,  this.hintText, 
  });

  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}

class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
     width:widget.width,
     height: widget.height,
      child: TextFormField(
        validator:widget.validator ,
        controller: widget.controller,
        obscureText: widget.isPassword&&obscureText,
        decoration: InputDecoration(
              fillColor: AppColor.lightgray,
              filled: true,
              suffixIcon: widget.isPassword
                  ? InkWell(
                     onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                  }
                  );
                  },
            
            child: Icon( obscureText? Icons.visibility_off:Icons.visibility ),
                    ) : null,
           // hintText: widget.hintText,
            prefixIcon:Icon(widget.iconText),
            label: Text(widget.labelText,style: TextStyle(color: AppColor.gray),),
            hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 20),
            
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColor.dark),
            
            ),
            focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColor.primary),
             ),
            errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: const Color.fromARGB(255, 255, 17, 0)),
          ),
        ),
      ),
    );
  }
}
