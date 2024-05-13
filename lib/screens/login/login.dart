import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vitti_heritage_app/Auth/EmailAndPasswordAuth/EmailAndPasswordAuth.dart';
import 'package:vitti_heritage_app/Auth/Validator/TextBoxValidator.dart';
import 'package:vitti_heritage_app/components/backPageButton.dart';
import 'package:vitti_heritage_app/components/button.dart';
import 'package:vitti_heritage_app/components/richText.dart';
import 'package:vitti_heritage_app/navgation/tabBarNavigation.dart';
import 'package:vitti_heritage_app/screens/login/components/googleCard.dart';
import 'package:vitti_heritage_app/screens/login/components/orDivider.dart';
import 'package:vitti_heritage_app/screens/login/components/passwordBox.dart';
import 'package:vitti_heritage_app/screens/login/components/phoneCard.dart';
import 'package:vitti_heritage_app/screens/login/components/textBox.dart';
import 'package:vitti_heritage_app/screens/login/phone.dart';
import 'package:vitti_heritage_app/screens/login/signUp.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  final _auth = AuthService();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
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
            physics: const AlwaysScrollableScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [BackPageButton()],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "VITTI",
                        style: GoogleFonts.aboreto(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Image.asset(
                        "assets/images/logoSmall.png",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const RichTextField(
                    text1: "Log in",
                    text2: " to Start",
                    size: 32,
                    weight: FontWeight.bold,
                    color1: TColors.orange,
                    color2: Colors.black87,
                    textAlign: TextAlign.left,
                  ),
                  const RichTextField(
                    text1: "If you need any support",
                    text2: " Click Here.",
                    size: 14,
                    weight: FontWeight.w500,
                    color1: Colors.black54,
                    color2: TColors.primaryBlue,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Form(
                      key: formkey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        children: [
                          TextBox(
                            controller: _email,
                            emailValidator: Validator.validateEmail,
                            text: 'vitti.heritage@gmail.com',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          PasswordBox(
                            passwordcontroller: _password,
                            valueKey: ValueKey('password'),
                            passwordValidator: Validator.validatePassword,
                            text: 'Enter 6 digit password',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RoundedBorderButton1(text: "Log In", onTap: _Login),
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const SignUp());
                        },
                        child: const RichTextField(
                          text1: "Don't have an Account? ",
                          text2: "Sign Up",
                          size: 15,
                          weight: FontWeight.w500,
                          color1: Colors.black54,
                          color2: TColors.primaryBlue,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Skip",
                            style: GoogleFonts.poppins(
                                color: TColors.primaryBlue, fontSize: 15),
                          ))
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
                  PhoneCard(
                      text: "Login With OTP",
                      tap: () {
                        Get.to(PhonePage());
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _Login() async {
    final user =
        await _auth.loginUserWithEmailAndPassword(_email.text, _password.text);
    if (user != null) {
      print("User Logged in");
      Get.to(CustomTabBar());
    }
  }
}
