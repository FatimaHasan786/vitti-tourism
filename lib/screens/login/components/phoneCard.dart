import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneCard extends StatelessWidget {
  const PhoneCard({
    super.key,
    required this.text,
    required this.tap,
  });

  final String text;
  final VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: 60,
        width: MediaQuery.sizeOf(context).width / 1.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black45),
        ),
        child: Center(
          child: Text(
            text,
            style:
                GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}




