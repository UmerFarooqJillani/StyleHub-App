import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stylehub/app/app.dart';
import 'package:stylehub/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Build root widget -> MyApp");
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      child: const StyleHubApp(),
      builder: (context, child) {
        debugPrint("Initialize Screen-Utility");
        return child!;
      },
    );
  }
}
