import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:stylehub/app/constants/strings.dart';
import 'package:stylehub/app/themes/light_theme.dart';

import 'router/app_router.dart';

class StyleHubApp extends ConsumerWidget {
  const StyleHubApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("StyleHubApp build triggered");
    final GoRouter router = ref.watch(appRouterProvider);
    debugPrint("Router attached to MaterialApp");

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: lightTheme,
      // darkTheme: darkTheme,    // Add later
      // themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
