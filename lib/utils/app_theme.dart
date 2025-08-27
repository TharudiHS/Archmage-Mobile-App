import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      fontFamily: 'TTCommons',
      primaryColor: AppColors.red,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.red,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.white),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.blackish,
        ),
        bodyMedium: TextStyle(fontSize: 16, color: AppColors.gray),
      ),
    );
  }
}
