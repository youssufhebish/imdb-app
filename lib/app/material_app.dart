import 'package:flutter/material.dart';
import 'package:movies/features/popular_movies/popular_movies_view.dart';
import '../core/constants.dart';
import '../core/themes/theme.dart';

MaterialApp materialApp(BuildContext context) => MaterialApp(
  navigatorKey: Constants.navigatorKey,
  title: Constants.appLabel,
  theme: themeData,
  home: const PopularMoviesView(),
);