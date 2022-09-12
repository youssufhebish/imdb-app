import 'package:flutter/material.dart';

import '../constants.dart';

class SizerHelper{

  /// Returns the percentage of the screen width
  static double w(double percent){
    return MediaQuery.of(Constants.navigatorKey.currentState!.context).size.width * (percent / 100.0);
  }

  /// Returns the percentage of the screen height
  static double h(double percent){
    return MediaQuery.of(Constants.navigatorKey.currentState!.context).size.height * (percent / 100.0);
  }
}