

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/utils/constants/colors.dart';

mystyle(double fs, [FontWeight ?fw, Color ?clr]){
  return GoogleFonts.nunito(
    fontSize: fs,
    fontWeight: fw,
    color: clr,

  );
}



class TMCustomTextStyle{
  TMCustomTextStyle._();

  static TextStyle elevatedButtonTextStyle = const TextStyle(
    fontSize: 16,
    color: TMCustomColors.elevatedButtonTextColor,
    fontWeight: FontWeight.w600
  );
  static TextStyle appBarTextStyleLight =  TextStyle(
    fontSize: 18,
    color: TMCustomColors.appBarTextColorDark,
    fontWeight: FontWeight.w600
  );
  static TextStyle appBarTextStyleDark =  TextStyle(
    fontSize: 18,
    color: TMCustomColors.appBarTextColorLight,
    fontWeight: FontWeight.w600
  );
  static TextStyle outlineButtonTextStyleDark=  const TextStyle(
      fontSize: 16,
      color: TMCustomColors.whiteColor,
      fontWeight: FontWeight.w600
  );
  static TextStyle outlineButtonTextStyleLight=  const TextStyle(
      fontSize: 16,
      color: TMCustomColors.blackColor,
      fontWeight: FontWeight.w600
  );
  static TextStyle chipThemeTextStyleLight=  const TextStyle(
      fontSize: 16,
      color: TMCustomColors.blackColor,
      fontWeight: FontWeight.w400
  );

  static TextStyle chipThemeTextStyleDark=  const TextStyle(
      fontSize: 16,
      color: TMCustomColors.whiteColor,
      fontWeight: FontWeight.w400
  );
}

Color textClrLight=const Color(0xffF8F8F8);
const Color textClrDark=Color(0xffE9E9EB);
const Color cardClr=Color(0xff292B3E);
const Color cardClr2=Color(0xff8E8E93);
const Color backgroundClr=Color(0xff191A22);
const Color buttonClr=Color(0xff246BFD);
const Color formtextclr=Color(0xff8A8A8E);
