import 'package:go_router/go_router.dart';
import 'package:lilac_machine_test/config/router/route_paths.dart';
import 'package:lilac_machine_test/features/auth/presentation/screens/login_decision_screen.dart';
import 'package:lilac_machine_test/features/auth/presentation/screens/login_mobile_screen.dart';
import 'package:lilac_machine_test/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:lilac_machine_test/features/chat/presentation/screens/chat_list_screen.dart';
import 'package:lilac_machine_test/features/chat/presentation/screens/chat_screen.dart';
import 'package:lilac_machine_test/features/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: RoutePaths.splash,
  routes: [
    GoRoute(
      path: RoutePaths.splash,
      builder: (context, state) => const SplashScreen(),
    ),

    GoRoute(
      path: RoutePaths.loginDecision,
      builder: (context, state) => const LoginDecisionScreen(),
    ),

    GoRoute(
      path: RoutePaths.loginMobile,
      builder: (context, state) => LoginMobileScreen(),
    ),

    GoRoute(
      path: RoutePaths.verifyMobile,
      builder: (context, state) {
        final body = state.extra as Map<String, dynamic>;
        final mobileNumber = body['mobileNumber'];
        return VerifyOtpScreen(mobileNumber: mobileNumber);
      },
    ),

    GoRoute(
      path: RoutePaths.home,
      builder: (context, state) => const ChatListScreen(),
    ),

    GoRoute(
      path: RoutePaths.chatScreen,
      builder: (context, state) {
        final body = state.extra as Map<String, dynamic>;
        final receiverId = body['receiverId'];
        final senderId = body['senderId'];
        bool isOnline = body['isOnline'];
        final name = body['name'];
        final profile = body['profile'];
        return ChatScreen(
          profile: profile,
          senderId: senderId,
          receiverId: receiverId,
          isOnline: isOnline,
          name: name,
        );
      },
    ),
  ],
);
