import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:vitti_heritage_app/Auth/EmailAndPasswordAuth/EmailAndPasswordAuth.dart';
import 'package:vitti_heritage_app/Auth/Validator/TextBoxValidator.dart';
import 'package:vitti_heritage_app/components/backPageButton.dart';
import 'package:vitti_heritage_app/components/button.dart';
import 'package:vitti_heritage_app/components/richText.dart';
import 'package:vitti_heritage_app/navgation/tabBarNavigation.dart';
import 'package:vitti_heritage_app/screens/home/home.dart';
import 'package:vitti_heritage_app/screens/login/components/googleCard.dart';
import 'package:vitti_heritage_app/screens/login/components/orDivider.dart';
import 'package:vitti_heritage_app/screens/login/components/passwordBox.dart';
import 'package:vitti_heritage_app/screens/login/components/phoneCard.dart';
import 'package:vitti_heritage_app/screens/login/components/textBox.dart';
import 'package:vitti_heritage_app/screens/login/login.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _auth = AuthService();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

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
                  Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        children: [
                          TextBox(
                            text: "Enter your e-mail",
                            emailValidator: Validator.validateEmail,
                            controller: _email,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          PasswordBox(
                            passwordcontroller: _password,
                            passwordValidator: Validator.validatePassword,
                            text: 'Enter Password',
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          PasswordBox(
                            passwordValidator: Validator.validatePassword,
                            text: 'Re-Enter Password',
                            passwordcontroller: _password,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      )),
                  RoundedBorderButton1(
                      text: "Sign Up", onTap:() => _signup(context)),
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

  Future<void> _signup(BuildContext context) async {
    try {
      await _auth.signUpWithEmailAndPassword(
          email: _email.text, password: _password.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("User Created Successfully"),
        duration: Duration(seconds: 2),
      ));
      Get.to(() => HomePage());
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("An error occured : $e"),
        duration: Duration(seconds: 2),
      ));
    }
  }
}
