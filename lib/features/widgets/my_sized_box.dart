import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MySizedBox extends StatelessWidget {
  const MySizedBox({
    this.height = Constants.paddingValue,
    this.width = Constants.paddingValue,
    Key? key,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
