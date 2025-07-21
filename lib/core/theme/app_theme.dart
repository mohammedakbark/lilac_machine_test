import 'package:flutter/material.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';
import 'package:lilac_machine_test/core/theme/app_styles.dart';

class AppTheme {
  static ThemeData themeData() => ThemeData(
        textTheme: AppTheme.buildTextTheme(
          AppStyle.smallStyle(),
          AppStyle.mediumStyle(),
          AppStyle.largeStyle(),
        ),
        scaffoldBackgroundColor: AppColors.WHITE,
        appBarTheme: AppBarTheme(
            centerTitle: false,
            backgroundColor: AppColors.WHITE),
        // colorScheme: ColorScheme.dark(primary: AppColors.kPrimaryColor),
      );

  static TextTheme buildTextTheme(
    TextStyle small,
    TextStyle medium,
    TextStyle large,
  ) {
    return TextTheme(
      titleSmall: small,
      titleMedium: medium,
      titleLarge: large,
      bodySmall: small,
      bodyMedium: medium,
      bodyLarge: large,
      displaySmall: small,
      displayMedium: medium,
      displayLarge: large,
      headlineSmall: small,
      headlineMedium: medium,
      headlineLarge: large,
      labelSmall: small,
      labelMedium: medium,
      labelLarge: large,
    );
  }
}
