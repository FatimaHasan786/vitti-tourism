import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vitti_heritage_app/screens/onboarding/controllers/onboardingController.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';


class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: TColors.primaryBlue),
        child: Text(text,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w500,color:Colors.white),),
      ),
    );
  }
}