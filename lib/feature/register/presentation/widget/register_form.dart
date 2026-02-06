import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_bottom.dart';
import 'package:slice_app/core/widget/custom_text_form_feild.dart';
import 'package:slice_app/feature/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:slice_app/feature/register/data/cubit/cubit/register_cubit.dart';
import 'package:slice_app/feature/register/data/models/register_class.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  var formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneNumperController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneNumperController.dispose();
    addressController.dispose();
    super.dispose();

  }

  bool isEmailValid(String email){
           bool emailValid = 
                RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(email);
                return emailValid;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 20,
        children: [
          CustomTextFormFeild(
            height: 50,
            controller: nameController,
            labelText: "User Name",
            iconText: Icons.person,
            validator: (v) {
              if (v == null || v.isEmpty) {
                return "Name is required";
              } else {
                return null;
              }
            },
          ),

          CustomTextFormFeild(
            height: 50,
            controller: emailController,
            labelText: 'Email',
            iconText: Icons.email,
            validator: (v) {
              if (v == null || v.isEmpty) {
                return "Email is required";
              }else if(!isEmailValid(v)){
                return"Enter avalid email"; 
              }
              return null;
            }, 
          ),

          CustomTextFormFeild(
            height: 50,
            controller: passwordController,
            isPassword: true,
            labelText: "Password",
            iconText: Icons.lock,
            validator: (v) {
              if (v == null || v.isEmpty) {
                return "Password is required";
              }else if(v.length<8){
                 return "Password must be at least 8 character";
              }
              return null;
            }, 
          ),

          CustomTextFormFeild(
            height: 50,
            controller: confirmPasswordController,
            isPassword: true,
            labelText: "Confirm Password",
            iconText: Icons.lock,
            validator: (v) {
              if (v != passwordController.text) {
                return "confirm Password is not match";
              }
              return null;
            },
          ),

          CustomTextFormFeild(
            height: 50,
            controller: phoneNumperController,
            labelText: "Phone Number",
            iconText: Icons.phone, 
           
          ),

          CustomTextFormFeild(
            height: 50,
            controller: addressController,
            labelText: "address",
            iconText: Icons.location_city, 
           
          ),
          SizedBox(height: 10),
          BlocListener<RegisterCubit, RegisterState>(
            listener: (context, state) {
              if(state is RegisterLoadingInitial){
                showDialog(context: context, builder: (context)=>Center(child: CircularProgressIndicator()));
              }else if(state is RegisterSuccessInitial){
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavBarScreen()), (e)=>false);
               }
              else if(state is RegisterErorrInitial){
                Navigator.pop(context);
                showDialog(context: context, builder: (context)=>AlertDialog(content: Text("error: \n   please again"),));
              }
            },
            child: CustomBottom(
              title: "Create",
              backgroundcolor: AppColor.primary,
              width: 200,
              onTap: () {
                if (formKey.currentState?.validate() ?? false) {
                  context.read<RegisterCubit>().register(
                    RegisterClass(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      confirmPassword: confirmPasswordController.text,
                      phoneNumper: phoneNumperController.text,
                      address: addressController.text,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
