import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBox extends StatelessWidget {
  const TextBox({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
              constraints: const BoxConstraints(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: text,
              hintStyle: GoogleFonts.poppins(
                fontSize: 14
              ),
            ));
  }
}