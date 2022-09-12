import 'package:flutter/material.dart';

class AppColors{
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color textColor = Color(0xFF1E1E1E);
  static const Color secondaryText = Color(0xFF989696);
  static const Color lightBlack = Color(0xFF585858);
  static const Color grey = Color(0xFFD9D9D9);
  static const Color baseColor = Color(0xFFF5C518);
  static const Color secondaryColor = Color(0xFFFCE4A9);
  static const Color scaffoldColor = Color(0xFF171612);
  static const Color formField = Color(0xFFF9F9F9);
  static const Color pinCodeColor = Color(0xFFFAFAFA);
  static const Color cardColor = Color(0xFFF9F9F9);
  static const Color itemWhite = Color(0xFFF6F6F6);
  static const Color red = Color(0xFFF60008);
  static const Color notificationRed = Color(0xFFD24B4B);
  static const Color darkGreen = Color(0xFF4A8200);
  static const Color lightGreen = Color(0xFF89E313);

  static const MaterialColor primarySwatch = MaterialColor(
    0xFFF5C518, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    // HINT: SITE : https://maketintsandshades.com is used to get shades of the primary swatch
    <int, Color>{
      50: Color(0xffddb116),//10%
      100: Color(0xffc49e13),//20%
      200: Color(0xffac8a11),//30%
      300: Color(0xff93760e),//40%
      400: Color(0xff7b630c),//50%
      500: Color(0xff624f0a),//60%
      600: Color(0xff493b07),//70%
      700: Color(0xff312705),//80%
      800: Color(0xff181402),//90%
      900: Color(0xff000000),//100%
    },
  );
}