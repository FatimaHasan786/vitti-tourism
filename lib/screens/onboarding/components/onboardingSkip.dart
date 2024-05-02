import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:vitti_heritage_app/screens/login/login.dart';
import 'package:vitti_heritage_app/screens/onboarding/controllers/onboardingController.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Get.to(Login()),
      child: const Text(
        'Skip',
        style: TextStyle(
            color: TColors.white, fontWeight: FontWeight.w600, fontSize: 15),
      ),
    );
  }
}