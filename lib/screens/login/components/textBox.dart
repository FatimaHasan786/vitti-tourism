import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vitti_heritage_app/Auth/Validator/TextBoxValidator.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class TextBox extends StatelessWidget {
  const TextBox({super.key, required this.text, this.emailValidator, this.onSaved, this.valueKey, required this.controller});

  final String text;
  @override
 final String? Function(String?)? emailValidator;
final void Function(String)? onSaved;
final TextEditingController controller;
final ValueKey? valueKey;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: valueKey,
      controller: controller,
       onSaved: onSaved != null ? (value) => onSaved!(value!) : null, //call back function
        validator: emailValidator,
        decoration: InputDecoration(
          constraints: const BoxConstraints(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: text,
          hintStyle: GoogleFonts.poppins(fontSize: 14),
        ));
  }
}
