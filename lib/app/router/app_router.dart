import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:stylehub/features/home/presentation/authentication/signup/presentation/signup_screen.dart';
import 'package:stylehub/features/home/presentation/home_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  bool debug = false;
  assert(debug = true); // true only in debug mode
  debugPrint('GoRouter provider created');

  return GoRouter(
    debugLogDiagnostics: debug,
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (_, _) => const HomeScreen()),
      GoRoute(path: '/signup', builder: (_, _) => const SignUpScreen()),
      GoRoute(path: '/home', builder: (_, _) => const HomeScreen()),
    ],
  );
});
