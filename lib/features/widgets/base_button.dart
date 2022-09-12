import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/helpers/sizer.dart';
import 'custom_text.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    required this.buttonText,
    required this.onTap,
    Key? key,
    this.textColor = AppColors.white,
    this.buttonColor = AppColors.baseColor,
    this.borderRadius = 5.0,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.bold,
    this.height,
  }) : super(key: key);

  final String buttonText;
  final Color textColor;
  final Color buttonColor;
  final Function()? onTap;
  final double fontSize;
  final FontWeight fontWeight;
  final double borderRadius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: buttonDecoration(buttonColor, borderRadius),
        height: height?? SizerHelper.h(7.7),
        child: CustomText.main(buttonText, fontSize: fontSize, fontWeight: fontWeight, color: textColor, height: 0.0,),
      ),
    );
  }


  BoxDecoration buttonDecoration(
      Color buttonColor,
      double borderRadius,
      ) => BoxDecoration(
    color: buttonColor,
    borderRadius: BorderRadius.circular(borderRadius),
  );
}


