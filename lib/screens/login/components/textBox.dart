import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class TextBox extends StatelessWidget {
  const TextBox({super.key, required this.text,});

  final String text;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: Validators.compose([
          Validators.required("Email is Required"),
          Validators.email('Invalid email address'),
        ]),
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
