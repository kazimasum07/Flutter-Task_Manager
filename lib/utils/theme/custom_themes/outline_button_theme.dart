import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/utils/constants/colors.dart';

class TMOutlineButtonTheme{
  TMOutlineButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TMCustomColors.blackColor,
      side: const BorderSide(color: TMCustomColors.blueColor),
      textStyle: TMCustomTextStyle.outlineButtonTextStyleLight,
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))
    )
  );
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: TMCustomColors.whiteColor,
          side: const BorderSide(color: TMCustomColors.blueAccentColor),
          textStyle: TMCustomTextStyle.outlineButtonTextStyleLight,
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))
      )
  );
}