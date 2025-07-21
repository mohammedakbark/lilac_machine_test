import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';

class AppStyle {
  static final _defaultStyle = GoogleFonts.poppins;

  static TextStyle normalStyle({
    double? fontSize,
    Color? color,
    double? spacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    List<Shadow>? shadows,
    double? height,
  }) => _defaultStyle(
    height: height,
    shadows: shadows,
    fontWeight: fontWeight ?? FontWeight.normal,
    fontSize: fontSize,
    decorationColor: color ?? AppColors.BLACK,
    color: color ?? AppColors.BLACK,
    letterSpacing: spacing,
    decoration: decoration,
  );

  static TextStyle boldStyle({
    double? fontSize,
    Color? color,
    double? spacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    List<Shadow>? shadows,
    double? height,
  }) => _defaultStyle(
    height: height,
    shadows: shadows,
    fontWeight: fontWeight ?? FontWeight.bold,
    fontSize: fontSize,
    decorationColor: color ?? AppColors.BLACK,
    color: color ?? AppColors.BLACK,
    letterSpacing: spacing,
    decoration: decoration,
  );

  static TextStyle smallStyle({
    double? fontSize,
    Color? color,
    double? spacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    List<Shadow>? shadows,
    double? height,
  }) => _defaultStyle(
    height: height,
    shadows: shadows,
    fontWeight: fontWeight ?? FontWeight.w300,
    decorationColor: color ?? AppColors.BLACK,
    fontSize: fontSize,
    color: color ?? AppColors.BLACK,
    letterSpacing: spacing,
    decoration: decoration,
  );

  static TextStyle mediumStyle({
    double? fontSize,
    Color? color,
    double? spacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    List<Shadow>? shadows,
    double? height,
  }) => _defaultStyle(
    height: height,
    shadows: shadows,
    fontWeight: fontWeight ?? FontWeight.w500,
    decorationColor: color ?? AppColors.BLACK,
    fontSize: fontSize,
    color: color ?? AppColors.BLACK,
    letterSpacing: spacing,
    decoration: decoration,
  );

  static TextStyle largeStyle({
    double? fontSize,
    Color? color,
    double? spacing,
    TextDecoration? decoration,
    FontWeight? fontWeight,
    List<Shadow>? shadows,
    double? height,
  }) => _defaultStyle(
    height: height,
    shadows: shadows,
    decorationColor: color ?? AppColors.BLACK,
    fontWeight: fontWeight ?? FontWeight.w800,
    fontSize: fontSize,
    color: color ?? AppColors.BLACK,
    letterSpacing: spacing,
    decoration: decoration,
  );
}
