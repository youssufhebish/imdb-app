import 'package:flutter/material.dart';
import 'package:movies/features/popular_movies/units/card_grid.dart';
import 'package:movies/features/widgets/custom_appbar.dart';

class PopularMoviesView extends StatelessWidget {
  const PopularMoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Most Popular Movies'.toUpperCase(),),
      body: const CardGrid(),
    );
  }
}
