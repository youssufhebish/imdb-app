import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movies/core/constants.dart';
import 'package:movies/core/helpers/animations/animation_class.dart';
import 'package:movies/core/helpers/navigator_helper.dart';
import 'package:movies/features/widgets/base_button.dart';

import '../../../core/helpers/sizer.dart';

class MoviesErrorWidget extends StatelessWidget {
  const MoviesErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Constants.paddingValue),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyAnimation(
              animationDirection: AnimationDirection.top,
              child: Lottie.asset(
                'assets/images/error.json',
                width: SizerHelper.w(70.0),
              ),
            ),
            const SizedBox(height: 20.0,),
            BaseButton(
              buttonText: 'TRY AGAIN !!',
              onTap: () => NavigatorHelper.restart(),
            ),
          ],
        ),
      ),
    );
  }
}
