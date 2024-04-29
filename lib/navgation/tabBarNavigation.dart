import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vitti_heritage_app/controller/tabBarController.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<TabBarController>(
        init: TabBarController(),
        builder: (TabBarController controller) {
          return Scaffold(
            extendBody: true,
            bottomNavigationBar: 
             FloatingNavigationBar(
              barHeight: 70,
        backgroundColor: Colors.black87,
        indicatorColor: TColors.primaryBlue,
        indicatorWidth:22,
        iconColor: Colors.white,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
        iconSize: 20.0,
        items: [
          NavBarItems(icon: EvaIcons.homeOutline,),
          NavBarItems( icon: EvaIcons.search,),
          NavBarItems(
            icon: EvaIcons.shoppingCartOutline,),
          NavBarItems(
            icon: EvaIcons.activity,),
        ],
        onChanged: (index) {
    controller.selectedTab.value = index;
  },
    
      ),
            body: controller.WidgetList[controller.selectedTab.value],
          );
        });
  }
}
