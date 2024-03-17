import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleCard extends StatelessWidget {
  const GoogleCard({
    super.key,
    required this.text,
    required this.tap,
    required this.image,
  });

  final String text;
  final String image;
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
              height: 30,
              width: 30,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                  fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
