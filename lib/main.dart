import 'package:flutter/material.dart';
import 'package:lilac_machine_test/config/bloc_confi.dart';
import 'package:lilac_machine_test/config/main_config.dart';
import 'package:lilac_machine_test/config/router/app_router.dart';
import 'package:lilac_machine_test/core/theme/app_theme.dart';
import 'package:lilac_machine_test/core/utils/responsive_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainConfig.lockOrientation();
  runApp(BlocConfig(child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ResponsiveHelper.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Lilac Tech',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData(),
    );
  }
}
