import 'package:flutter/material.dart';
import 'package:movies/core/helpers/animations/animation_class.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../../widgets/custom_text.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({
    required this.movieTitle,
    required this.rate,
    required this.year,
    required this.crew,
    Key? key,
  }) : super(key: key);

  final String movieTitle;
  final String rate;
  final String year;
  final String crew;

  @override
  Widget build(BuildContext context) {
    return MyAnimation(
      animationDirection: AnimationDirection.start,
      child: Padding(
        padding: const EdgeInsets.all(Constants.paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText.main(
              movieTitle,
              color: AppColors.baseColor,
              textAlign: TextAlign.start,
              fontSize: 28.0,
              maxLines: 2,
            ),
            const SizedBox(height: 12.5,),
            Row(
              children: [
                CustomText.single(rate.isEmpty? 'N/A' : '$rate ', fontSize: 20.0, color: AppColors.white, height: 1.5,),
                const Icon(Icons.star, color: AppColors.baseColor, size: 20.0,),
                const SizedBox(width: 20.0,),
                CustomText.single(year, fontSize: 20.0, color: AppColors.grey, height: 1.5,),
              ],
            ),
            const SizedBox(height: 12.5,),
            CustomText.main(
              'CREW',
              color: AppColors.baseColor,
              textAlign: TextAlign.start,
              fontSize: 20.0,
            ),
            CustomText.single(
              crew,
              fontSize: 16.0,
              textAlign: TextAlign.start,
              maxLines: 10,
              color: AppColors.white,
              height: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
