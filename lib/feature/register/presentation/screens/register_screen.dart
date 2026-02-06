import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/core/widget/custom_bottom.dart';
import 'package:slice_app/core/widget/custom_text_form_feild.dart';
import 'package:slice_app/feature/login/data/cubit/cubit/login_cubit.dart';
import 'package:slice_app/feature/login/presentation/ui/login_screen.dart';
import 'package:slice_app/feature/login/presentation/ui/widget/bottom_login.dart';
import 'package:slice_app/feature/register/data/cubit/cubit/register_cubit.dart';
import 'package:slice_app/feature/register/presentation/widget/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Image.asset("assets/images/splash1.png", width: 100),
                Text(
                  "If you taste it once, you’ll never forget it",
                  style: TextStyle(fontSize: 15, color: AppColor.primary),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomLogin(
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
                      logText: 'Login',
                    ),
                    BottomLogin(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      logText: 'Register',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                RegisterForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
