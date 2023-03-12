import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mystyle(double fs, [FontWeight ?fw, Color ?clr]){
  return GoogleFonts.nunito(
    fontSize: fs,
    fontWeight: fw,
    color: clr,

  );
}

const Color textClrLight=Color(0xffF8F8F8);
const Color textClrDark=Color(0xffE9E9EB);
const Color cardClr=Color(0xff292B3E);
const Color cardClr2=Color(0xff8E8E93);
const Color backgroundClr=Color(0xff191A22);
const Color buttonClr=Color(0xff246BFD);
const Color formtextclr=Color(0xff8A8A8E);