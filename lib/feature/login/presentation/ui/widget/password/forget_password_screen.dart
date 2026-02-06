
import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_bottom.dart';
import 'package:slice_app/core/widget/custom_text_form_feild.dart';
import 'package:slice_app/feature/login/presentation/ui/widget/password/massege_email_screen.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 22),
  child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Text("Forgot Password?",style: TextStyle(
          fontSize: 30,
          color: AppColor.dark,
        ),),
        SizedBox(height: 10,),
        Text("Don't worry! It occurs. Please enter the email\n address linked with your account."
        ,style: TextStyle(
          fontSize: 16,
          color: AppColor.gray,
        ),),
        SizedBox(height: 30,),
        CustomTextFormFeild(hintText:"Enter your email", labelText: 'Enter your email',),
        SizedBox(height: 38,),
        CustomBottom(title:"Send Code",onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MassegeEmailScreen() ),
            );
            },
),
        
        
    
      ],
    ),
  ),
),


    );
  }
}