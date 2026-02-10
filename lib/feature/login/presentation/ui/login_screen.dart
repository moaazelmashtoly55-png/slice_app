import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/login/data/cubit/cubit/login_cubit.dart';
import 'package:slice_app/feature/login/presentation/ui/widget/bottom_login.dart';
import 'package:slice_app/feature/login/presentation/ui/widget/continar_login.dart';
import 'package:slice_app/feature/register/data/cubit/cubit/register_cubit.dart';
import 'package:slice_app/feature/register/presentation/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),

              Image.asset("assets/images/splash1.png", width: 220),
              Text(
                "If you taste it once, you’ll never forget it",
                style: TextStyle(fontSize: 15, color: AppColor.primary,),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomLogin(
                    logText: 'Login',
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

                  BottomLogin(
                    logText: 'Register',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => RegisterCubit(),
                            child: RegisterScreen(),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),

              SizedBox(height: 30),
              Divider(
                indent: 20,
                endIndent: 20,
                thickness: 5,
                radius: BorderRadius.circular(8),
              ),
              SizedBox(height: 30),
              ContinarLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
