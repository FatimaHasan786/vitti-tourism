import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:vitti_heritage_app/components/backPageButton.dart';
import 'package:vitti_heritage_app/components/button.dart';
import 'package:vitti_heritage_app/components/richText.dart';
import 'package:vitti_heritage_app/navgation/tabBarNavigation.dart';
import 'package:vitti_heritage_app/screens/login/components/googleCard.dart';
import 'package:vitti_heritage_app/screens/login/components/orDivider.dart';
import 'package:vitti_heritage_app/screens/login/components/passwordBox.dart';
import 'package:vitti_heritage_app/screens/login/components/phoneCard.dart';
import 'package:vitti_heritage_app/screens/login/components/textBox.dart';
import 'package:vitti_heritage_app/screens/login/login.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      BackPageButton(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const RichTextField(
                    text1: "Sign Up ",
                    text2: " Now",
                    size: 32,
                    weight: FontWeight.bold,
                    color1: TColors.orange,
                    color2: Colors.black87,
                    textAlign: TextAlign.center,
                  ),
                  const RichTextField(
                      textAlign: TextAlign.center,
                      text1: "If you need any support",
                      text2: " Click Here.",
                      size: 14,
                      weight: FontWeight.w500,
                      color1: Colors.black54,
                      color2: TColors.primaryBlue),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextBox(text: "Enter your e-mail"),
                  const SizedBox(
                    height: 15,
                  ),
                  const PasswordBox(
                    text: 'Enter Password',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const PasswordBox(
                    text: 'Re-Enter Password',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                   RoundedBorderButton1(text: "Sign Up", onTap: () { 
                    Get.to(CustomTabBar());
                   },),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(Login());
                        },
                        child: const RichTextField(
                            textAlign: TextAlign.left,
                            text1: "Already have an Account? ",
                            text2: "Log In",
                            size: 15,
                            weight: FontWeight.w500,
                            color1: Colors.black54,
                            color2: TColors.primaryBlue),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const OrDivider(),
                  const SizedBox(
                    height: 15,
                  ),
                  GoogleCard(
                    image: "assets/images/google.webp",
                    text: "Google",
                    tap: () {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  PhoneCard(text: "Login with OTP", tap: () {})
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
