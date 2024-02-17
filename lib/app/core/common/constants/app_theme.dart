import 'package:flutter/material.dart';
import 'package:geek_app/app/core/common/constants/app_colors.dart';
import 'package:geek_app/app/core/common/extensions/color_extension.dart';

/// > A class that contains all the colors used in the app
class AppTheme {
  static ThemeData get light => ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: AppColors.primary.toMaterialColor(),
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: const Color(0xFFAB111A),
          cursorColor: const Color(0xFFAB111A),
          selectionColor: const Color(0xFFAB111A).withOpacity(0.2),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: AppColors.grey_600, letterSpacing: 0.4),
          displayMedium: TextStyle(color: AppColors.grey_600, letterSpacing: 0.4),
          bodyMedium: TextStyle(color: AppColors.grey_600, letterSpacing: 0.4),
          titleMedium: TextStyle(color: AppColors.grey_600, letterSpacing: 0.4),
        ),
      ).copyWith(
        scaffoldBackgroundColor: AppColors.grey_200,
        canvasColor: AppColors.grey_300,
        primaryColor: AppColors.grey_300,
        colorScheme: const ColorScheme.light().copyWith(
          primary: AppColors.primary,
          primaryContainer: Colors.white,
          secondary: AppColors.primary,
          background: Colors.white,
        ),
        datePickerTheme: const DatePickerThemeData(
          backgroundColor: Colors.white,
          dayStyle: TextStyle(
            color: AppColors.grey_500,
          ),
          surfaceTintColor: Colors.transparent,
          headerHelpStyle: TextStyle(
            color: AppColors.grey_600,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        disabledColor: AppColors.grey_300,
        inputDecorationTheme: InputDecorationTheme(
          isDense: false,
          prefixIconColor: AppColors.grey_600,
          labelStyle: const TextStyle(
            color: AppColors.grey_600,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          hintStyle: const TextStyle(
            color: AppColors.grey_300,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: AppColors.primary.withOpacity(0.7),
              width: 2,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          //DISABLE  ------
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          //ERROR  ------
          errorStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.error.withOpacity(0.5),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 1,
              color: AppColors.error,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: AppColors.error,
            ),
          ),
        ),
      );
}
