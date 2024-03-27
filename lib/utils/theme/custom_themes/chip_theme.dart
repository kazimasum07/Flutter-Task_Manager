import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/utils/constants/colors.dart';

class TMChipTheme{
  TMChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor:  TMCustomColors.greyColor.withOpacity(0.4),
    labelStyle: TMCustomTextStyle.chipThemeTextStyleLight,
    selectedColor: TMCustomColors.blueColor,
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor:  TMCustomColors.whiteColor
  );


  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor:  TMCustomColors.greyColor,
    labelStyle: TMCustomTextStyle.chipThemeTextStyleDark,
    selectedColor: TMCustomColors.blueColor,
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
    checkmarkColor:  TMCustomColors.whiteColor
  );

}