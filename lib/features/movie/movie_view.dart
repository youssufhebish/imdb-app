import 'package:flutter/material.dart';
import 'package:movies/features/movie/units/movie_details.dart';
import 'package:movies/features/movie/units/poster_widget.dart';

import '../../data/model/movies_model.dart';

class MovieView extends StatelessWidget {
  const MovieView({required this.moviesModelItems, Key? key}) : super(key: key);

  final MoviesModelItems moviesModelItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PosterWidget(poster: moviesModelItems.image!),
          const SizedBox(height: 20.0,),
          MovieDetails(
            movieTitle: moviesModelItems.title!,
            rate: moviesModelItems.imDbRating!,
            year: moviesModelItems.year!,
            crew: moviesModelItems.crew!,
          ),
        ],
      ),
    );
  }
}
