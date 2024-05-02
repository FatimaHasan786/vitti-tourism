import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vitti_heritage_app/screens/login/controller/passwordController.dart';

class PasswordBox extends StatelessWidget {
  const PasswordBox({super.key, required this.text});
 
  final String text;

  @override
  Widget build(BuildContext context) {
    return GetX<PasswordController>(
      init: PasswordController(),
      builder: (controller) {
      return TextField(
        obscureText: controller.showPassword.value,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: () {
              controller.showPassword!.value = !controller.showPassword!.value;
            },
            child: Icon(
              controller.showPassword.value
                ? Icons.visibility
                : Icons.visibility_off,
              color: Colors.black54,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: text,
          hintStyle: GoogleFonts.poppins(
            fontSize: 14
          ),
        ),
      );
    });
  }
}
