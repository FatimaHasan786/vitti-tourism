import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vitti_heritage_app/screens/onboarding/components/onboardingButton.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key,
    required this.title,
    required this.subTitle,
    required this.url,
    required this.btnText,
  });

  final String title, subTitle, btnText;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height / 2,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(image: AssetImage(url))),
        ),
        Text(title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
        Text(subTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black45)),
        onBoardingNextButton(text: btnText)
      ],
    );
  }
}
