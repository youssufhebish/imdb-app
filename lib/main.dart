import 'package:flutter/material.dart';
import 'package:movies/core/helpers/dio_helper.dart';
import 'package:movies/core/helpers/my_print.dart';

import 'app/my_app.dart';

void main() {

  DioHelper.init();
  MyPrint.debugPrintOverride();

  runApp(const MyApp());
}
