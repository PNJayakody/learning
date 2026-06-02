import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle onboardingTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle description = TextStyle(
    fontSize: 14,
    color: AppColors.grey,
    height: 1.5,
  );
}
