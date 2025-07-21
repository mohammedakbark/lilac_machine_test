import 'package:flutter/material.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';

class AppSpacer extends StatelessWidget {
  final double? heightPortion;
  final double? widthPortion;
  const AppSpacer({super.key, this.heightPortion, this.widthPortion});

  @override
  Widget build(BuildContext context) {
    final h = ResponsiveHelper.hp;
    final w = ResponsiveHelper.wp;
    return SizedBox(
      height: heightPortion == null ? 0 : h * heightPortion!,
      width: widthPortion == null ? 0 : w * widthPortion!,
    );
  }
}
