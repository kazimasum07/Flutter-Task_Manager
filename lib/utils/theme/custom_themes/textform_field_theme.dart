import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/common_widgets.dart';
import 'package:task_manager/utils/constants/colors.dart';

class TMTextFormFieldTheme{
  TMTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TMCustomColors.greyColor,
    suffixIconColor: TMCustomColors.greyColor,
    labelStyle: const TextStyle().copyWith(fontSize: 14,color: TMCustomColors.blackColor),
    hintStyle: const TextStyle().copyWith(fontSize: 14,color: TMCustomColors.blackColor),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: TMCustomColors.blackColor.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1,color: TMCustomColors.greyColor)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: TMCustomColors.greyColor)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: TMCustomColors.black12Color)
    ),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: TMCustomColors.redColor)
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: TMCustomColors.orangeColor)
    ),
  );
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TMCustomColors.greyColor,
    suffixIconColor: TMCustomColors.greyColor,
    labelStyle: const TextStyle().copyWith(fontSize: 14,color: TMCustomColors.whiteColor),
    hintStyle: const TextStyle().copyWith(fontSize: 14,color: TMCustomColors.whiteColor),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: TMCustomColors.blackColor.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: TMCustomColors.greyColor)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: TMCustomColors.greyColor)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: TMCustomColors.whiteColor)
    ),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: TMCustomColors.redColor)
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: TMCustomColors.orangeColor)
    ),
  );
}