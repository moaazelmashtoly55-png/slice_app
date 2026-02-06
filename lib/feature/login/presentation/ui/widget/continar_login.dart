import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/con_icon.dart';
import 'package:slice_app/core/widget/custom_bottom.dart';
import 'package:slice_app/core/widget/custom_text_form_feild.dart';
import 'package:slice_app/feature/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:slice_app/feature/home/presentation/ui/home_screen.dart';
import 'package:slice_app/feature/login/data/cubit/cubit/login_cubit.dart';
import 'package:slice_app/feature/login/presentation/ui/widget/password/forget_password_screen.dart';

class ContinarLogin extends StatefulWidget {
  const ContinarLogin({super.key});

  @override
  State<ContinarLogin> createState() => _ContinarLoginState();
}

class _ContinarLoginState extends State<ContinarLogin> {
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        // image: DecorationImage(image: AssetImage("assets/images/1.jpg"),fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: const Color.fromARGB(95, 182, 182, 182),
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextFormFeild(
           validator: (v) {
              if (v == null || v.isEmpty) {
                return "Email is required";
              }
              return null;
            },
            controller: emailcontroller,
            labelText: "Email",
            width: 300,
            height: 55,
            iconText: Icons.email, hintText: '',
          ),
          SizedBox(height: 30),
          CustomTextFormFeild(
            validator: (v) {
              if (v == null || v.isEmpty) {
                return "Password is required";
              }else if(v.length<8){
                 return "Password must be at least 8 character";
              }
              return null;
            },
            controller: passwordcontroller,
            isPassword: true,
            labelText: "Password",
            width: 300,
            height: 55,
            iconText: Icons.lock, hintText: '',
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassScreen(),));
            },
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                "Forget password ?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),

          SizedBox(height: 20),
            //------------------------------------------------------------------------------------------------------------------
          BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              if(state is LoginLoadingInitial){
                showDialog(context: context, builder:(context)=>Center(child: CircularProgressIndicator()));
              }
              else if(state is LoginErrorInitial){
                Navigator.pop(context);
                showDialog(context: context, builder: (context)=>AlertDialog(content: Text(" Erorr: \n             Please login correctly"),));
              }
              else if(state is LoginSuccesInitial){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavBarScreen()), (e)=>false);
              }
            },
            child: CustomBottom(
              title: "LOGIN",
              
              backgroundcolor: AppColor.primary,
              width: 250,
              onTap: () {
                context.read<LoginCubit>().Login(email: emailcontroller.text, password: passwordcontroller.text);
              },
            ),
          ),

          SizedBox(height: 30),
          Row(
            spacing: 10,
            children: [
              ConIcon(svg: "assets/icons/facebook_ic.svg"),
              ConIcon(svg: "assets/icons/google_ic.svg"),
              ConIcon(svg: "assets/icons/cib_apple.svg"),
            ],
          ),
        ],
      ),
    );
  }
}
