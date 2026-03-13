import 'package:flutter/material.dart';

import 'package:stylehub/app/constants/colors.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,

  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.black,
    brightness: Brightness.light,
  ),

  scaffoldBackgroundColor: AppColors.background,
  fontFamily: 'Poppins',

  appBarTheme: const AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.background,
    foregroundColor: AppColors.textPrimary,
  ),
);
