import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/helpers/remove_scrolling_glow.dart';

class PaddingColumn extends StatelessWidget {
  const PaddingColumn({
    required this.children,
    this.padding = const EdgeInsets.all(Constants.paddingValue),
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    Key? key,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return removeScrollingGlowSingleChild(
      child: Padding(
        padding: padding,
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      ),
    );
  }
}
