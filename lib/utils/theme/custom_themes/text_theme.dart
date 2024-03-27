import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';

class TMTextTheme{
  TMTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.black),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),
    headlineMedium: const TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white),
  );

}