import 'package:flutter/material.dart';

class TColors {
  TColors._();

  static const Color primary = Colors.black;
  static const Color orange = Color(0xFFFC8065);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);
  static const Color primaryBlue = Color.fromARGB(255,3,115,243);

  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkBackground = Colors.white.withOpacity(0.1);

  static const Color buttonPrimary = Color(0xFFFC8065);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF466AEA);

  static const Color black = Color(0xFF4A4A4A);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color.fromARGB(255, 227, 227, 227);
  static const Color softGrey = Color(0xFF6C757D);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
  static const LinearGradient buttonColor = LinearGradient(
    colors: [Color(0xFFFF3100), Color(0xFFFC8065)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );
}

const LinearGradient imggradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromRGBO(75, 75, 75, 0.35), // #4B4B4B with 35% opacity
    Color.fromRGBO(0, 0, 0, 0.78),
  ],
);
