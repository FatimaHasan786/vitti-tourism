
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';

class BackPageButton extends StatelessWidget {
  const BackPageButton({super.key,});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Get.back();
      print("ontap pressed");},
      child: Container(
        width: 35,
        height: 35,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 229, 238, 255),
        ),
        child:const Icon(
          Icons.arrow_back_ios_new_sharp,
          size: 18,
          color: TColors.primaryBlue,
        ),
      ),
    );
  }
}