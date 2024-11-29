import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../consts/consts_variables.dart';
import '../customs/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //home screen
      body: Container(
        child: Column(
          children: [
            // column widget
            Stack(
              // stack widget
              children: [
                const SizedBox(
                  height: 150,
                  child: Center(
                    child: Text(
                      'WELCOME TO EDU',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
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
            Container(
              // chat svg
              child: SvgPicture.asset('assets/icons/chat.svg'),
            ),
            const SizedBox(
              // White height 50 px
              height: 50,
            ),
            Column( // two buttons
              children: [
                CustomButton(
                  // LOGIN Button
                  ontap: () {
                    Navigator.pushNamed(context, kLogInView);
                  },
                  text: 'LOGIN',
                  color: kPrimaryColor,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  // SIGNUP Button
                  ontap: () {
                    Navigator.pushNamed(context, kSignUpView);
                  },
                  text: 'SIGNUP',
                  color: kSecondColor,
                  textColor: Colors.black,
                ),
              ],
            ),
            const Spacer(
              // take white space as bosible
              flex: 1,
            ),
            Container(
              // bottom png
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              child: Image.asset(
                'assets/images/main_bottom.png',
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
