import 'package:flutter/material.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';

class AppMargin extends StatelessWidget {
  final Widget child;
  const AppMargin({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ResponsiveHelper.paddingMedium),
      child: child,
    );
  }
}
