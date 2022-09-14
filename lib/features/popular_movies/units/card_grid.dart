import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/helpers/base_state.dart';
import 'package:movies/core/helpers/remove_scrolling_glow.dart';
import 'package:movies/cubit/movies_cubit.dart';
import 'package:movies/features/popular_movies/units/error_widget.dart';
import 'package:movies/features/widgets/loader.dart';

import 'movie_card.dart';

class CardGrid extends StatelessWidget {
   const CardGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MoviesCubit>(
      create: (context) => MoviesCubit()..getMovies(),
      child: BlocBuilder<MoviesCubit, BaseState>(
        builder: (context, state) {
          var cubit = context.read<MoviesCubit>();

          if (state is LoadingState) {
            return const Loader();
          } else if (state is ErrorState) {
            return const MoviesErrorWidget();
          } else {
            return removeScrollingGlowSingleChild(
              child: GridView.builder(
                padding: const EdgeInsets.all(12.5),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cubit.moviesModel.items!.length,
                itemBuilder: (context, index) => MovieCard(
                  moviesModelItems: cubit.moviesModel.items![index]!,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 35.0,
                  mainAxisSpacing: 50.0,
                  childAspectRatio: 1 / 1.65,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}