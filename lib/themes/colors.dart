import 'package:flutter/material.dart';

Map<int, Color> color = {
  50: const Color.fromRGBO(136, 14, 79, .1),
  100: const Color.fromRGBO(136, 14, 79, .2),
  200: const Color.fromRGBO(136, 14, 79, .3),
  300: const Color.fromRGBO(136, 14, 79, .4),
  400: const Color.fromRGBO(136, 14, 79, .5),
  500: const Color.fromRGBO(136, 14, 79, .6),
  600: const Color.fromRGBO(136, 14, 79, .7),
  700: const Color.fromRGBO(136, 14, 79, .8),
  800: const Color.fromRGBO(136, 14, 79, .9),
  900: const Color.fromRGBO(136, 14, 79, 1),
};

class AppColors extends ThemeExtension<AppColors> {
  final Color? background;
  final Color? primaryText;
  final Color? secondaryText;
  final Color? gridColor;
  final Color? primaryBlue;
  final List<Color>? primaryGradient;
  final Color? primaryBlueLight;
  final Color? fullWhite;

  const AppColors({
    required this.background,
    required this.primaryText,
    required this.secondaryText,
    required this.gridColor,
    required this.primaryBlue,
    required this.primaryGradient,
    required this.primaryBlueLight,
    required this.fullWhite,
  });

  @override
  AppColors copyWith(
      {Color? background,
      Color? primaryText,
      Color? secondaryText,
      Color? text,
      Color? subText,
      Color? errorText,
      Color? gridColor,
      List<Color>? gradient,
      Color? primaryBlue,
      List<Color>? primaryGradient,
      Color? primaryBlueLight,
      Color? buttonColorRed,
      Color? textFieldBackground,
      Color? timerColor,
      Color? lightWhite,
      Color? fullWhite,
      Color? textLightColor,}) {
    return AppColors(
        background: background ?? this.background,
        primaryText: primaryText ?? this.primaryText,
        secondaryText: secondaryText ?? this.secondaryText,
        gridColor: gridColor ?? this.gridColor,
        primaryBlue: primaryBlue ?? this.primaryBlue,
        primaryGradient: primaryGradient ?? this.primaryGradient,
        primaryBlueLight: primaryBlueLight ?? this.primaryBlueLight,
        fullWhite: fullWhite ?? this.fullWhite,);
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      background: Color.lerp(background, other.background, t),
      primaryText: Color.lerp(primaryText, other.primaryText, t),
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t),
      gridColor: Color.lerp(gridColor, other.gridColor, t),
      primaryBlue: Color.lerp(primaryBlue, primaryBlue, t),
      primaryBlueLight: Color.lerp(primaryBlueLight, primaryBlueLight, t),
      primaryGradient: primaryGradient,
      fullWhite: Color.lerp(fullWhite, other.fullWhite, t),
    );
  }
}
