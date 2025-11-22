import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle size10weight600({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 10,
    height: 12 / 10,
    fontWeight: FontWeight.w600,
  );

  static TextStyle size10weight400({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 10,
    height: 15.6 / 10,
    fontWeight: FontWeight.w400,
  );

  static TextStyle size16weight500({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 16,
    height: 21.6 / 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size16weight400({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 16,
    height: 22 / 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size12weight400({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 12,
    height: 14.4 / 12,
    fontWeight: FontWeight.w400,
  );
  static TextStyle size12weight300({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 12,
    height: 21.6 / 12,
    fontWeight: FontWeight.w300,
  );
  static TextStyle size12weight500({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 12,
    height: 14.4 / 12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle size16weight600({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 16,
    height: 21.6 / 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle size16_7weight400({String? fontFamily}) =>
      GoogleFonts.getFont(
        fontFamily ?? 'Inter',
        fontSize: 16.7,
        height: 21.6 / 16.7,
        fontWeight: FontWeight.w400,
      );

  static TextStyle size15weight300({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 15,
    height: 18 / 15,
    fontWeight: FontWeight.w300,
  );

  static TextStyle size13weight200({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 13,
    height: 15.6 / 13,
    fontWeight: FontWeight.w200,
  );

  static TextStyle size14weight500({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 14,
    height: 21.6 / 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle size14weight400({String? fontFamily}) => GoogleFonts.getFont(
    fontFamily ?? 'Inter',
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
  );
}
