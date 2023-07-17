import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';

class MyText {
  TextStyle introductiontext = GoogleFonts.poppins(
    fontWeight: FontWeight.w300,
    color: MyColor.one,
    fontSize: 20,
  );

  TextStyle introductionkuliner = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    color: MyColor.three,
    fontSize: 30,
  );

  TextStyle buttontext = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    color: MyColor.two,
    fontSize: 15,
  );

  TextStyle titlelogregtext = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    color: MyColor.four,
    fontSize: 15,
  );

  TextStyle buttonbox = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    color: MyColor.white,
  );

  TextStyle transparanttext = GoogleFonts.poppins(
    fontWeight: FontWeight.w300,
    color: MyColor.grey.withOpacity(0.8),
    fontSize: 14,
  );

  TextStyle nametext = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    color: MyColor.grey.withOpacity(0.8),
    fontSize: 15,
  );

  TextStyle smallbuttontext = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    color: MyColor.four,
    fontSize: 14,
  );

  TextStyle titleforgotpassword = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    color: MyColor.three,
    fontSize: 24,
  );

  TextStyle contentforgotpassword = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    color: MyColor.grey,
    fontSize: 18,
  );
}
