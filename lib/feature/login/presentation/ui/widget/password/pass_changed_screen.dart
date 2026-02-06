import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_bottom.dart';
import 'package:slice_app/feature/login/data/cubit/cubit/login_cubit.dart';
import 'package:slice_app/feature/login/presentation/ui/login_screen.dart';

class PassChanged extends StatelessWidget {
  const PassChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: AlignmentGeometry.center,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icon/Successmark.svg"),
              SizedBox(height: 35),
              Text(
                "Password Changed!",
                style: TextStyle(fontSize: 26, color: AppColor.dark),
              ),
              SizedBox(height: 5),
              Text(
                "Your password has been changed \nsuccessfully.",
                style: TextStyle(fontSize: 15, color: AppColor.gray),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              CustomBottom(
                title: "Back to Login",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => LoginCubit(),
                        child: LoginScreen(),
                      ),
                    ),
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
