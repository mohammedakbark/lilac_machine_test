import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lilac_machine_test/config/router/route_paths.dart';
import 'package:lilac_machine_test/core/constants/img_const.dart';
import 'package:lilac_machine_test/features/auth/presentation/bloc/auth%20controller/auth_controller_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    initScreen();
    super.initState();
  }

  void initScreen() async {
    await Future.delayed(Duration(seconds: 1));
    final getToken = await AuthControllerBloc().getUserData;
    if (getToken.token.isNotEmpty) {
      context.go(RoutePaths.home);
    } else {
      context.go(RoutePaths.loginDecision);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          fit: BoxFit.contain,
          height: 100,
          width: 100,
          ImgConst.logo,
        ),
      ),
    );
  }
}
