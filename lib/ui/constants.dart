import 'dart:ui';

import 'package:flutter/material.dart';

class A {
  static const transparent = Colors.transparent;

  // Цвета для светлой темы
  static const ltPrimaryColor = Color(0xff1A1A20);
  static const ltAccentColor = Color(0xff4CAF50);
  static const ltDisabledColor = Color(0x907C7E92);
  static const ltBackgroundColor = Colors.white;
  static const ltCardColor = Color(0xfff5f5f5);
  static const ltBottomNavBackgroundColor = Colors.white;
  static const ltBottomNavUnselectedColor = Colors.black;
  static const ltBottomNavSelectedColor = Colors.black;

  // Цвета для темной темы
  static const dkPrimaryColor = Colors.white;
  static const dkAccentColor = Color(0xff6ADA6F);
  static const dkDisabledColor = Color(0x907C7E92);
  static const dkBackgroundColor = Color(0xff21222C);
  static const dkCardColor = Color(0xff1A1A20);
  static const dkBottomNavBackgroundColor = Color(0xff21222C);
  static const dkBottomNavUnselectedColor = Colors.white;
  static const dkBottomNavSelectedColor = Colors.white;

  static const black = Colors.black;
  static const black54 = Colors.black54;
  static const white = Colors.white;
  static const grey = Colors.grey;
  static const grayF5 = Color(0xfff5f5f5);
  static const lightGray = Color(0xFF7C7E92);
  static const grayBlue = Color(0xFF3B3E5B);
  static const grayBlue2 = Color(0xFF252849);
  static const green = Colors.green;
}

class AppTexts {
  static const appHeader = 'Список\nинтересных мест';
  static const buildRoute = 'ПОСТРОИТЬ МАРШРУТ';
  static const toPlan = 'Запланировать';
  static const toFavorites = 'В Избранное';
  static const favorites = 'Избранное';
  static const toVisit = 'Хочу посетить';
  static const visited = 'Посетил';
}

class AppColorsLight {
  static const mainBlack = Color(0xFF252849);
  static const secondaryBlack = Color(0xFF3B3E5B);
  static const secondary2 = Color(0xFF7C7E92);
  static const inactiveBlack = Color.fromRGBO(124, 126, 146, 0.56);
  static const background = Color(0xFFF5F5F5);

  static const green = Color(0xFF4CAF50);
  static const yellow = Color(0xFFFCDD3D);
  static const red = Color(0xFFEF4343);
  static const white = Colors.white;

  static const appBarBackground = Colors.transparent;
}

class AppColorsDark {
  static const dark = Color(0xFF1A1A20);
  static const main = Color(0xFF21222C);
  static const secondaryBlack = Color(0xFF3B3E5B);
  static const secondary2Black = Color(0xFF7C7E92);
  static const inactiveBlack = Color.fromRGBO(124, 126, 146, 0.56);
  static const background = main;

  static const green = Color(0xFF6ADA6F);
  static const yellow = Color(0xFFFFE769);
  static const red = Color(0xFFCF2A2A);
  static const white = Colors.white;

  static const appBarBackground = Colors.transparent;
}

class AppDecorations {
  static const cardDecoration = BoxDecoration(
    color: AppColorsLight.background,
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );

  static const tabBarBackground = BoxDecoration(
    color: AppColorsLight.background,
    borderRadius: BorderRadius.all(
      Radius.circular(
        40,
      ),
    ),
  );
}
