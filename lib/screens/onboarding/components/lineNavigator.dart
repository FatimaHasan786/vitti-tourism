import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vitti_heritage_app/screens/onboarding/controllers/onboardingController.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';

class LineNavigator extends StatelessWidget {
  const LineNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Center(
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor:  TColors.primaryBlue ,
            dotHeight: 6),
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
      ),
    );
  }
}