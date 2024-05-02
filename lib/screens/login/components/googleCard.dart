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
        height: 55,
        width: MediaQuery.sizeOf(context).width / 1.2,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black45.withOpacity(0.2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
              height: 25,
              width: 25,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
