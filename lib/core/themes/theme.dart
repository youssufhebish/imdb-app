import 'package:flutter/material.dart';
import '../colors.dart';
import 'app_bar_theme.dart';

ThemeData themeData = ThemeData(
  primaryColor: AppColors.baseColor,
  primarySwatch: AppColors.primarySwatch,
  scaffoldBackgroundColor: AppColors.scaffoldColor,
  fontFamily: 'Cairo',
  bottomSheetTheme:  const BottomSheetThemeData(backgroundColor: Colors.transparent),
  appBarTheme: appBarTheme,
  iconTheme: const IconThemeData(
    color: AppColors.baseColor,
  ),
);