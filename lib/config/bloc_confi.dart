import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilac_machine_test/features/auth/presentation/bloc/auth%20controller/auth_controller_bloc.dart';
import 'package:lilac_machine_test/features/chat/presentation/bloc/chat%20controller/chat_controller_cubit.dart';
import 'package:lilac_machine_test/features/chat/presentation/bloc/chat_profile_controller/chat_profile_controller_cubit.dart';

class BlocConfig extends StatelessWidget {
  final Widget child;
  const BlocConfig({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthControllerBloc>(
          create: (context) => AuthControllerBloc(),
        ),
        BlocProvider<ChatProfileControllerCubit>(
          create: (context) => ChatProfileControllerCubit(),
        ),
        BlocProvider<ChatControllerCubit>(
          create: (context) => ChatControllerCubit(),
        ),
      ],
      child: child,
    );
  }
}
