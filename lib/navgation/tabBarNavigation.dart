import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
             Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 15),
              child: GNav(
                backgroundColor: Colors.black,
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.grey.shade700,
                gap: 8,
                onTabChange: (index) {controller.selectedTab.value = index;} ,
                padding: EdgeInsets.all(10),
                tabs: [
                  GButton(icon: Icons.home_filled,text:"Home" ,),
                   GButton(icon: Icons.play_circle_filled_outlined,text:"Course" ,),
                    GButton(icon: Icons.message_outlined,text:"Message" ,),
                     GButton(icon: Icons.settings,text:"Profile" ,),
                    
                ],
              ),
            ),
          ),
            body: controller.WidgetList[controller.selectedTab.value],
          );
        });
  }
}
