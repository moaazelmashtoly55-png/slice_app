
import 'package:flutter/material.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_bottom.dart';
import 'package:slice_app/core/widget/custom_text_form_feild.dart';
import 'package:slice_app/feature/login/presentation/ui/widget/password/pass_changed_screen.dart';

class CreateNewPass extends StatelessWidget {
  const CreateNewPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 33,),
            Text("Create new password",style: TextStyle(
              fontSize: 30,color: AppColor.dark,
            ),),
             SizedBox(height: 10,),

            Text("Your new password must be unique from those\n previously used.",
            style: TextStyle(
              fontSize: 16,color: AppColor.gray,
            ),),
            SizedBox(height: 32,),
            CustomTextFormFeild(hintText: "New Password", labelText: 'New Password',),
            SizedBox(height: 15,),
            CustomTextFormFeild(hintText: "Confirm Password", labelText: 'Confirm Password',),
           SizedBox(height: 38,),
           CustomBottom(title: "Reset Password",onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PassChanged() ),
            );
            },),


          ],
        ),
      ),
    );
  }
}