import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:vitti_heritage_app/screens/onboarding/components/onboardingPage.dart';
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
            children: [
              onBoardingPage(
                  title: "Life is short and the world is wide",
                  subTitle:
                      "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
                  url: "assets/images/onboarding1.png",
                  btnText: "Get Started"),
              onBoardingPage(
                  title: "Life is short and the world is wide",
                  subTitle:
                      "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
                  url: "assets/images/onboarding1.png",
                  btnText: "Get Started"),
              onBoardingPage(
                  title: "Life is short and the world is wide",
                  subTitle:
                      "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
                  url: "assets/images/onboarding1.png",
                  btnText: "Get Started")
            ],
          ),
        ],
      ),
    );
  }
}
