import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vitti_heritage_app/components/button.dart';
import 'package:vitti_heritage_app/components/richText.dart';
import 'package:vitti_heritage_app/screens/onboarding/components/lineNavigator.dart';
import 'package:vitti_heritage_app/screens/onboarding/controllers/onboardingController.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key,
    required this.subTitle,
    required this.url,
    required this.btnText,
    required this.text1,
    required this.text2,
  });

  final String subTitle, btnText, text1, text2;
  final String url;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height / 2.2,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage(
                      url,
                    ),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
            child: Column(
              children: [
                Center(
                  child: RichTextField(
                    text1: text1,
                    text2: text2,
                    size: 26,
                    weight: FontWeight.w700,
                    color1: Colors.black,
                    color2: TColors.orange,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  constraints: BoxConstraints(minHeight: 100),
                  child: Text(subTitle,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const LineNavigator(),
                const SizedBox(
                  height: 30,
                ),
                RoundedBorderButton1(text: btnText, onTap: () {OnBoardingController.instance.nextPage(); },)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
