import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vitti_heritage_app/screens/home/home.dart';
import 'package:vitti_heritage_app/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  _checkLoginStatus(BuildContext context) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    if (isLoggedIn) {
      Get.to(() => HomePage());
    } else {
      Get.to(() => Login());
    }
  }

  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage(BuildContext context) {
    if (currentPageIndex.value == 2) {
      _checkLoginStatus(context);
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
