import 'package:flutter/material.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator.adaptive(
      backgroundColor: AppColors.WHITE,
      constraints: BoxConstraints(minHeight: 30, minWidth: 30),
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.PRIMARY),
    );
  }
}
