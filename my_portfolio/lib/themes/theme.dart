import 'package:flutter/material.dart';
import 'colors.dart';
import 'typography.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blue,
        accentColor: AppColors.accent,
      ).copyWith(
        secondary: AppColors.accent,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primary,
        titleTextStyle: AppTypography.headline1.copyWith(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: TextTheme(
        displayLarge:
            AppTypography.headline1, // Cambié headline1 por displayLarge
        bodyLarge: AppTypography.subtitle1, // Cambié subtitle1 por bodyLarge
        bodyMedium: AppTypography.bodyText1, // Cambié bodyText1 por bodyMedium
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary, // Color de fondo del botón
        ),
      ),
    );
  }
}
