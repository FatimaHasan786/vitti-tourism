
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';

class BackPageButton extends StatelessWidget {
  const BackPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // handle button press
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(255, 229, 238, 255),
        ),
        child:const Icon(
          Icons.arrow_back_ios_new_sharp,
          color: TColors.primaryBlue,
        ),
      ),
    );
  }
}