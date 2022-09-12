import 'package:flutter/material.dart';
import 'package:movies/core/colors.dart';
import 'package:movies/core/helpers/animations/animation_class.dart';
import 'package:movies/core/helpers/navigator_helper.dart';
import 'package:movies/core/helpers/sizer.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({
    required this.poster,
    Key? key,
  }) : super(key: key);

  final String poster;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Image.asset('assets/images/place-holder.gif',
          fit: BoxFit.cover,
          width: double.infinity,
          height: SizerHelper.h(40.0),
        ),
        Image.network(poster,
        fit: BoxFit.cover,
        width: double.infinity,
        height: SizerHelper.h(40.0),
        ),
        MyAnimation(
          animationDirection: AnimationDirection.start,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () => NavigatorHelper.pop(),
                icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: AppColors.white.withOpacity(0.7),
                  child: const Icon(Icons.close, color: AppColors.black,),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
