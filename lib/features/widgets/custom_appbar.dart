import 'package:flutter/material.dart';

import '../../core/colors.dart';
import 'custom_text.dart';

PreferredSizeWidget customAppBar({
  String title = '',
}) =>
    AppBar(
      title: CustomText.single(title, color: AppColors.baseColor, height: 0.0,),
      centerTitle: true,
    );