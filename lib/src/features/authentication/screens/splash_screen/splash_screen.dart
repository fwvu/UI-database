import 'package:flutter/material.dart';
import 'package:uidb/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:uidb/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:uidb/src/constants/colors.dart';
import 'package:uidb/src/constants/image_strings.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/constants/text_strings.dart';
import 'package:uidb/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          bpdFadeInAnimation(
            durationInMs: 1600,
            animate: bpdAnimatePosition(topAfter: 0, topBefore:  -30, leftBefore: -30, leftAfter: 0,),
             child: const Image(image: AssetImage(bpdSplashTopIcon)),
          ),
          bpdFadeInAnimation(
            durationInMs: 2000,
            animate: bpdAnimatePosition(topBefore: 100, topAfter: 100, leftAfter: bpdDefaultSize, leftBefore: -80, ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bpdAppName, style: Theme.of(context).textTheme.headlineSmall,),
                Text(bpdTagLine, style: Theme.of(context).textTheme.headlineMedium,),
              ],
            ),
          ),
          bpdFadeInAnimation(
            durationInMs: 2400,
            animate: bpdAnimatePosition(bottomBefore: 0, bottomAfter: 100,),
            child:  const Image(image: AssetImage(bpdSplashImage)),
          ),
          bpdFadeInAnimation(
            durationInMs: 1600,
            animate: bpdAnimatePosition(bottomBefore:  0, bottomAfter: 60, rightBefore: bpdDefaultSize, rightAfter: bpdDefaultSize,),
            child: Container(
              width: bpdSplashContainerSize,
              height: bpdSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: bpdPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

}

