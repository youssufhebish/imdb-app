import 'package:flutter/material.dart';

import '../../core/colors.dart';

class CustomText extends Text {
  const CustomText(
      String text, {
        Key? key,
        TextStyle? style,
        StrutStyle? strutStyle,
        TextAlign textAlign = TextAlign.center,
        TextDirection? textDirection,
        Locale? locale,
        bool? softWrap,
        TextOverflow overflow = TextOverflow.ellipsis,
        double textScaleFactor = 1.0,
        int maxLines = 1,
        String? semanticsLabel,
        TextWidthBasis? textWidthBasis,
        TextHeightBehavior? textHeightBehavior,
      }) : super(text,
      key: key,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
  );

  /// Single text line
  CustomText.single(
    String text, {
    Key? key,
    StrutStyle? strutStyle,
    TextAlign textAlign = TextAlign.center,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow overflow = TextOverflow.ellipsis,
    double textScaleFactor = 1.0,
    int maxLines = 1,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    /// Style parameters
    double fontSize = 16.0,
    Color color = AppColors.textColor,
    FontWeight? fontWeight,
    String fontFamily = 'Cairo',
    double height = 1.0,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? letterSpacing,
    double? wordSpacing,
  }) : super(
          text,
          key: key,
          style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            height: height,
            decoration: decoration,
            decorationColor: decorationColor,
            decorationStyle: decorationStyle,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
          ),
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
        );

  /// Main text widget class
  CustomText.main(
    String text, {
    Key? key,
    StrutStyle? strutStyle,
    TextAlign textAlign = TextAlign.center,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow overflow = TextOverflow.ellipsis,
    double textScaleFactor = 1.0,
    int maxLines = 1,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    /// Style parameters
    double fontSize = 22.0,
    Color color = AppColors.black,
    FontWeight fontWeight = FontWeight.w700,
    String fontFamily = 'Cairo',
    double height = 1.0,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? letterSpacing,
    double? wordSpacing,
  }) : super(
          text,
          key: key,
          style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            height: height,
            decoration: decoration,
            decorationColor: decorationColor,
            decorationStyle: decorationStyle,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
          ),
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
        );
}
