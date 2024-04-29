import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_divider/text_divider.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return TextDivider(
      text: Text("Or",style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w500),),
    );
  }
}