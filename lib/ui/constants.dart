import 'dart:ui';

import 'package:flutter/material.dart';

class AppTexts {
  static const appHeader = 'Список\nинтересных мест';
  static const buildRoute = 'ПОСТРОИТЬ МАРШРУТ';
  static const toPlan = 'Запланировать';
  static const toFavorites = 'В Избранное';
  static const favorites = 'Избранное';
  static const toVisit = 'Хочу посетить';
  static const visited = 'Посетил';
  static const clear = 'Очистить';
  static const distance = 'Расстояние';
  static const filtersScreenTitle = 'Фильтр';
  static const filtersScreenDistance = 'Расстояние';
  static const rangeFrom = 'от';
  static const rangeTo = 'до';
  static const meters = 'м';
  static const kilometers = 'км';
  static const show = 'Показать';
  static const cafe = 'Кафе';
  static const hotel = 'Hotel';
  static const museum = 'Музей';
  static const park = 'Парк';
  static const particularPlace = 'Особое место';
  static const restaurant = 'Ресторан';
}

class AppColorsLight {
  static const main = Color(0xFF252849);
  static const secondary = Color(0xFF3B3E5B);
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
  static const secondary = Color(0xFF3B3E5B);
  static const secondary2 = Color(0xFF7C7E92);
  static const inactiveBlack = Color.fromRGBO(124, 126, 146, 0.56);
  static const background = dark;

  static const green = Color(0xFF6ADA6F);
  static const yellow = Color(0xFFFFE769);
  static const red = Color(0xFFCF2A2A);
  static const white = Colors.white;

  static const appBarBackground = Colors.transparent;
}

class AppDecorations {
  static const cardDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );

  static const tabBarBackground = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(
        40,
      ),
    ),
  );

  static const circleBorder = BorderRadius.all(
    Radius.circular(99),
  );
}
