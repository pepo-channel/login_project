import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../consts/consts_variables.dart';
import '../customs/custom_button.dart';
import '../customs/custom_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              // stack widget
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 120,
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/login.svg'),
                  ],
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/images/main_top.png',
                    height: 150,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Form(
              // form has two feildtext and button
              child: Column(
                children: [
                  const CustomField(
                    // UserName Field
                    hint: 'User Name / Email',
                    preffixIcon: Icons.person,
                  ),
                  kSizedBox, // sized box height 16 px
                  CustomField(
                    // Password Field
                    hint: 'Password',
                    preffixIcon: Icons.lock,
                    SuffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: kPrimaryColor,
                    ),
                  ),
                  kSizedBox,
                  CustomButton(
                    // LogIn Button
                    text: 'LOGIN',
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              // Row has tow text
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an acount: '),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, kSignUpView);
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: kPrimaryColor),
                  ),
                ),
              ],
            ),
            Expanded(
                // bottom png
                child: Container(
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/images/login_bottom.png'))),
          ],
        ),
      ),
    );
  }
}
