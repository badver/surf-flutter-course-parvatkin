import 'dart:ui';

import 'package:flutter/material.dart';

class AppTexts {
  static const appHeader = 'Список\nинтересных мест';
}

class AppColors {
  static const black = Color(0xFF3B3E5B);
  static const green = Color(0xFF4CAF50);
  static const cardBackground = Color(0xFFF5F5F5);
  static const white = Colors.white;
  static const gray = Color(0xFF7C7E92);
  static const appBarBackground = Colors.transparent;
}

class AppDecorations {
  static const cardDecoration = BoxDecoration(
    color: AppColors.cardBackground,
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );
}

class AppTextStyles {
  static const cardType = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const cardName = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static const cardDetails = TextStyle(
    fontSize: 14,
    color: AppColors.gray,
  );

  static const appBarTitle = TextStyle(
    color: AppColors.black,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
}
