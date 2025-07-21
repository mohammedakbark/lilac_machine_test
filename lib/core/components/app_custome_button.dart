import 'package:flutter/material.dart';
import 'package:lilac_machine_test/core/components/app_laoding.dart';
import 'package:lilac_machine_test/core/components/app_spacer.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';
import 'package:lilac_machine_test/core/theme/app_styles.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';

class AppCustomeButton extends StatefulWidget {
  final String title;
  final Widget? icon;
  final Color? bgColor;
  final Color? titleColor;
  final VoidCallback onPress;
  final bool isLoading;

  const AppCustomeButton({
    super.key,
    required this.title,
    this.icon,
    this.bgColor,
    this.titleColor,
    required this.onPress,
    this.isLoading = false,
  });

  @override
  State<AppCustomeButton> createState() => _AppCustomeButtonState();
}

class _AppCustomeButtonState extends State<AppCustomeButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  void _onTapDown(TapDownDetails details) {
    setState(() => _isPressed = true);
    _animationController.forward();
  }

  void _onTapUp(TapUpDetails details) {
    setState(() => _isPressed = false);
    _animationController.reverse();
    widget.onPress();
  }

  void _onTapCancel() {
    setState(() => _isPressed = false);
    _animationController.reverse();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) => Transform.scale(
          scale: _scaleAnimation.value,

          child: Container(
            width: ResponsiveHelper.wp,
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.paddingXSmall,
              vertical: widget.icon != null
                  ? ResponsiveHelper.paddingSmall
                  : ResponsiveHelper.paddingMedium,
            ),
            decoration: BoxDecoration(
              color: widget.bgColor ?? AppColors.PRIMARY,
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.borderRadiusLarge,
              ),
            ),
            child: widget.isLoading
                ? Center(child: AppLoading())
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.icon != null) ...[
                        widget.icon!,
                        AppSpacer(widthPortion: .03),
                      ],

                      Text(
                        widget.title,
                        style: AppStyle.boldStyle(
                          color: widget.titleColor ?? AppColors.WHITE,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
