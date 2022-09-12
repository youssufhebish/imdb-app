import 'package:flutter/material.dart';
import 'package:movies/core/helpers/animations/animation_class.dart';
import 'package:movies/core/helpers/navigator_helper.dart';
import 'package:movies/data/model/movies_model.dart';
import 'package:movies/features/movie/movie_view.dart';

import '../../../core/colors.dart';
import '../../widgets/custom_text.dart';


class MovieCard extends StatelessWidget {
  const MovieCard({required this.moviesModelItems, Key? key}) : super(key: key);

  final MoviesModelItems moviesModelItems;

  @override
  Widget build(BuildContext context) {
    return MyAnimation(
      animationDirection: AnimationDirection.bottom,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => NavigatorHelper.push(MovieView(moviesModelItems: moviesModelItems,)),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadiusDirectional.only(
                        topStart: Radius.circular(6.0),
                        topEnd: Radius.circular(6.0),
                      ),
                      child: Image.asset(
                        'assets/images/place-holder.gif',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadiusDirectional.only(
                        topStart: Radius.circular(6.0),
                        topEnd: Radius.circular(6.0),
                      ),
                      child: Image.network(
                        moviesModelItems.image!,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: CustomText.main(
                  moviesModelItems.title!,
                  color: AppColors.textColor,
                  fontSize: 14.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0) +
                    const EdgeInsets.only(bottom: 6.0),
                child: Row(
                  children: [
                    CustomText.single(
                      moviesModelItems.imDbRating!.isEmpty
                          ? 'N/A'
                          : '${moviesModelItems.imDbRating!} ',
                      fontSize: 12.0,
                      color: AppColors.lightBlack,
                      height: 1.5,
                    ),
                    const Icon(
                      Icons.star,
                      color: AppColors.baseColor,
                      size: 20.0,
                    ),
                    const Spacer(),
                    CustomText.single(
                      moviesModelItems.year!,
                      fontSize: 12.0,
                      color: AppColors.lightBlack,
                      height: 1.5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
