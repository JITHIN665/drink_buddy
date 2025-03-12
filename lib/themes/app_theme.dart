import 'package:drink_buddy/themes/colors.dart';
import 'package:flutter/material.dart';

AppColors appColor(context) => Theme.of(context).extension<AppColors>()!;

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    extensions: const <ThemeExtension<AppColors>>[
      AppColors(
        primaryBlue: Color(0xFF0D47A1),
        primaryBlueLight: Color(0xFFBBDEFB),
        primaryGradient: [
          Color(0xffE5C984),
          Color(0xffBC934E),
        ],
        fullWhite: Color(0xffFFFFFF),
        background: Color(0xffFAFAFA),
        gridColor: Color(0xFF2196F3),
        primaryText: Color(0xff4D4E4F),
        secondaryText: Color(0xff4A4A4A),
      ),
    ],
    fontFamily: 'Manrope',
  );
}
