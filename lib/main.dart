import 'package:flutter/material.dart';
import 'package:login_project/consts/consts_variables.dart';
import 'views/home_view.dart';
import 'views/login_view.dart';
import 'views/signup_view.dart';

void main() {
  runApp(const login_app());
}

class login_app extends StatelessWidget {
  const login_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        kLogInView: (context) => const LoginView(),
        kSignUpView: (context) => const SignupView(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
