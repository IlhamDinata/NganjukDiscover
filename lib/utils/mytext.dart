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
}
