import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vitti_heritage_app/Auth/Validator/TextBoxValidator.dart';

import 'package:vitti_heritage_app/screens/login/controller/passwordController.dart';

class PasswordBox extends StatelessWidget {
  const PasswordBox({
    super.key,
    required this.text,
    this.passwordValidator,
    this.onSaved,
    this.valueKey, required this.passwordcontroller,
  });

  final String text;
  final ValueKey? valueKey;
  final String? Function(String?)? passwordValidator;
  final void Function(String)? onSaved;
  final TextEditingController passwordcontroller;

  @override
  Widget build(BuildContext context) {
    return GetX<PasswordController>(
        init: PasswordController(),
        builder: (controller) {
          return TextFormField(
            controller: passwordcontroller,
            onSaved: onSaved != null ? (value) => onSaved!(value!) : null,
            validator: passwordValidator,
            obscureText: controller.showPassword.value,
            decoration: InputDecoration(
              suffixIcon: InkWell(
                onTap: () {
                  controller.showPassword.value =
                      !controller.showPassword.value;
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
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          );
        });
  }
}
