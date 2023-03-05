import 'package:flutter/material.dart';
import 'package:uidb/src/constants/colors.dart';
import 'package:uidb/src/constants/image_strings.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/constants/text_strings.dart';
import 'package:uidb/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx( () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,
              child: Image(image: AssetImage(bpdSplashTopIcon),),
            ),
          ),
          Obx( () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
              left: splashController.animate.value ? bpdDefaultSize: -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(bpdAppName, style: Theme.of(context).textTheme.headlineSmall,),
                    Text(bpdTagLine, style: Theme.of(context).textTheme.headlineMedium,),
                  ],
                ),
              ),
            ),
          ),
          Obx( () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child:  Image(image: AssetImage(bpdSplashImage)),
              ),
            ),
          ),
          Obx( () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 60 : 0,
              right: bpdDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: bpdSplashContainerSize,
                  height: bpdSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: bpdPrimaryColor,
                    ),
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }

}
