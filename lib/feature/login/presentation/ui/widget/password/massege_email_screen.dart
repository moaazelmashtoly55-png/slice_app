
import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_bottom.dart';
import 'package:slice_app/feature/login/presentation/ui/widget/password/create_new_pass_screen.dart';

class MassegeEmailScreen extends StatelessWidget {
  const MassegeEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 22),
  child: SingleChildScrollView(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Text("Forgot Password?",style: TextStyle(
          fontSize: 30,color: AppColor.dark,
        ),),
        Text("Don't worry! It occurs. Please enter the email\n address linked with your account.",
        style: TextStyle(
          fontSize: 16,
          color: AppColor.gray,
        ),
        ),
        SizedBox(height: 32,),
    
        Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(4, (index) {
      return Container(
        width: 50,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: TextField(
          maxLength: 1,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: InputDecoration(counterText: ""),
          onChanged: (value) {
            if (value.isNotEmpty && index < 3) {
              FocusScope.of(context).nextFocus(); // يروح ع اللي بعده
            }
            if (value.isEmpty && index > 0) {
              FocusScope.of(context).previousFocus(); // يرجع للي قبله
            }
          },
        ),);}
    ),
    ),
    SizedBox(height: 38,),
    CustomBottom(title: "Verify",
    onTap: () {
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  CreateNewPass()),
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