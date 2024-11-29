import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../consts/consts_variables.dart';
import '../customs/custom_Icon.dart';
import '../customs/custom_button.dart';
import '../customs/custom_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({
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
                          'SIGN UP',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/signup.svg'),
                  ],
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/images/signup_top.png',
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
                    text: 'SINGUP',
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
                const Text('have an acount: '),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, kLogInView);
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: kPrimaryColor),
                  ),
                ),
              ],
            ),
            const Divider(
              // line with height 32 px
              height: 32,
              thickness: 1,
              color: Colors.grey,
              indent: 40,
              endIndent: 40,
            ),
            const Row(
              // Row Has Three Icons
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIcon(
                  svgurl: 'assets/icons/facebook.svg',
                ),
                SizedBox(width: 20),
                CustomIcon(
                  svgurl: 'assets/icons/twitter.svg',
                ),
                SizedBox(width: 20),
                CustomIcon(
                  svgurl: 'assets/icons/google-plus.svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
