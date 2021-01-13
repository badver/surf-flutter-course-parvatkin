import 'package:flutter/material.dart';
import 'package:places/ui/constants.dart';
import 'package:places/ui/widgets/custom_tab_indicator.dart';

/// all text style of the application
const appTextTheme = TextTheme(
  // large title
  headline1: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  ),
  // title
  headline2: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
  // subtitle
  subtitle1: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  ),
  // text
  subtitle2: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  // small bold
  bodyText1: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  ),
  // small
  bodyText2: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),
  // super small
  overline: TextStyle(
    fontSize: 12,
  ),
  // button
  button: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  ),
);

/// Light Theme
final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Roboto',
  primaryColor: AppColorsLight.main,
  tabBarTheme: TabBarTheme(
    indicator: const CustomTabIndicator(
      borderSide: BorderSide(
        color: AppColorsLight.secondary,
      ),
    ),
    unselectedLabelColor: AppColorsLight.secondary2,
    labelStyle: appTextTheme.bodyText1,
    labelColor: AppColorsLight.white,
  ),
  secondaryHeaderColor: AppColorsLight.secondary2,
  disabledColor: AppColorsLight.inactiveBlack,
  buttonColor: AppColorsLight.white,
  backgroundColor: AppColorsLight.background,
  scaffoldBackgroundColor: AppColorsLight.white,
  textTheme: TextTheme(
    // large title
    headline1: appTextTheme.headline1.copyWith(color: AppColorsLight.main),
    // title
    headline2: appTextTheme.headline2.copyWith(color: AppColorsLight.main),
    // subtitle
    subtitle1: appTextTheme.subtitle1.copyWith(color: AppColorsLight.main),
    // text
    subtitle2: appTextTheme.subtitle2.copyWith(color: AppColorsLight.secondary),
    // small bold
    bodyText1: appTextTheme.bodyText1.copyWith(color: AppColorsLight.white),
    // small
    bodyText2: appTextTheme.bodyText2.copyWith(color: AppColorsLight.secondary2),
    // super small
    overline: appTextTheme.overline.copyWith(color: AppColorsLight.main),
    // button
    button: appTextTheme.button.copyWith(color: AppColorsLight.main),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedItemColor: AppColorsLight.main,
    backgroundColor: AppColorsLight.white,
  ),
);

/// Dark Theme
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Roboto',
  primaryColor: AppColorsDark.white,
  secondaryHeaderColor: AppColorsDark.secondary2,
  disabledColor: AppColorsDark.inactiveBlack,
  backgroundColor: AppColorsDark.background,
  buttonColor: AppColorsDark.main,
  scaffoldBackgroundColor: AppColorsDark.main,
  tabBarTheme: TabBarTheme(
    indicator: const CustomTabIndicator(
      borderSide: BorderSide(
        color: AppColorsDark.white,
      ),
    ),
    unselectedLabelColor: AppColorsDark.secondary2,
    labelStyle: appTextTheme.bodyText1.copyWith(color: AppColorsDark.white),
  ),
  textTheme: TextTheme(
    // large title
    headline1: appTextTheme.headline1.copyWith(color: AppColorsDark.white),
    // title
    headline2: appTextTheme.headline2.copyWith(color: AppColorsDark.white),
    // subtitle
    subtitle1: appTextTheme.subtitle1.copyWith(color: AppColorsDark.main),
    // text
    subtitle2: appTextTheme.subtitle2.copyWith(color: AppColorsDark.white),
    // small bold
    bodyText1: appTextTheme.bodyText1.copyWith(color: AppColorsDark.white),
    // small
    bodyText2: appTextTheme.bodyText2.copyWith(color: AppColorsDark.main),
    // super small
    overline: appTextTheme.overline.copyWith(color: AppColorsDark.main),
    // button
    button: appTextTheme.button.copyWith(color: AppColorsDark.main),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedItemColor: AppColorsDark.white,
    backgroundColor: AppColorsDark.main,
  ),
  cardColor: AppColorsDark.dark,
);
