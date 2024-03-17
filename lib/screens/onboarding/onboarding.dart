import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:vitti_heritage_app/screens/onboarding/components/onboardingPage.dart';
import 'package:vitti_heritage_app/screens/onboarding/components/onboardingSkip.dart';
import 'package:vitti_heritage_app/screens/onboarding/controllers/onboardingController.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                  text1: "Life is short and the world is ",
                  text2: "wide",
                  subTitle:
                      "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
                  url: "assets/images/onboarding1.png",
                  btnText: "Get Started"),
              onBoardingPage(
                  text1: "It’s a big world out there go ",
                  text2: "explore",
                  subTitle:
                      "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
                  url: "assets/images/onboarding2.png",
                  btnText: "Next"),
              onBoardingPage(
                  text1: "People don’t take trips, trips take ",
                  text2: "people",
                  subTitle:
                      "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
                  url: "assets/images/onboarding1.png",
                  btnText: "Next"),
            ],
          ),
          const Positioned(right: 0, child: onBoardingSkip())
        ],
      ),
    );
  }
}
