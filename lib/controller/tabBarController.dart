import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';
import 'package:vitti_heritage_app/screens/camera/camera.dart';
import 'package:vitti_heritage_app/screens/community/community.dart';
import 'package:vitti_heritage_app/screens/home/home.dart';
import 'package:vitti_heritage_app/screens/map/map.dart';
import 'package:vitti_heritage_app/screens/whereToGo/where.dart';

class TabBarController extends GetxController with GetSingleTickerProviderStateMixin{
  RxInt selectedTab=RxInt(0);
  RxList<Widget> WidgetList=RxList(
    [
      HomePage(),
      MapPage(),
      CommunityPage(),
      WherePage(),
    ]
  );

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}