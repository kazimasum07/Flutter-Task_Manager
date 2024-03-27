import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/utils/constants/colors.dart';

class TMAppBarTheme{
  TMAppBarTheme._();

   static AppBarTheme lightAppBarTheme = AppBarTheme(
     elevation: 0.5,
     centerTitle: true,
     scrolledUnderElevation: 0.5,
     backgroundColor: TMCustomColors.appBarBackgroundColor,
     surfaceTintColor: TMCustomColors.appBarSurfaceTintColor,
     iconTheme: const IconThemeData(color: TMCustomColors.blackColor,size: 24),
     actionsIconTheme: const IconThemeData(color: TMCustomColors.blackColor,size: 24),
     titleTextStyle: TMCustomTextStyle.appBarTextStyleLight
   );

   static AppBarTheme darkAppBarTheme = AppBarTheme(
     elevation: 0.5,
     centerTitle: true,
     scrolledUnderElevation: 0.5,
     backgroundColor: TMCustomColors.appBarBackgroundColor,
     surfaceTintColor: TMCustomColors.appBarSurfaceTintColor,
     iconTheme: const IconThemeData(color: TMCustomColors.blackColor,size: 24),
     actionsIconTheme: const IconThemeData(color: TMCustomColors.whiteColor,size: 24),
     titleTextStyle: TMCustomTextStyle.appBarTextStyleDark
   );
}