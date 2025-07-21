import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lilac_machine_test/core/theme/app_colors.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';

class AppCustomeBackButton extends StatefulWidget {
  const AppCustomeBackButton({super.key});

  @override
  State<AppCustomeBackButton> createState() => _AppCustomeBackButtonState();
}

class _AppCustomeBackButtonState extends State<AppCustomeBackButton>
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
    context.pop();
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

        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,

            child: Container(
              height: 20,
              width: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 12,
                    color: AppColors.GREYSHADE.withAlpha(120),
                    blurRadius: 12,
                    offset: Offset(1, 2),
                  ),
                ],
                color: AppColors.WHITE,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.arrow_back, size: 20),
            ),
          );
        },
      ),
    );
  }
}
