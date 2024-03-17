import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextField extends StatelessWidget {
  const RichTextField({
    super.key,
    required this.text1,
    required this.text2,
    required this.size,
    required this.weight,
    required this.color1,
    required this.color2,required this.textAlign,
  });

  final String text1, text2;
  final FontWeight weight;
  final double size;

  final Color color1, color2;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        text: text1,
        style: GoogleFonts.poppins(
            fontSize: size, fontWeight: weight, color: color1),
        children: <TextSpan>[
          TextSpan(
              text: text2,
              style: GoogleFonts.poppins(
                  fontSize: size, fontWeight: weight, color: color2)),
        ],
      ),
    );
  }
}
