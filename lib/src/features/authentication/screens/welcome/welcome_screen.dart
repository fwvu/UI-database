import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidb/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:uidb/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:uidb/src/constants/colors.dart';
import 'package:uidb/src/constants/image_strings.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/constants/text_strings.dart';
import 'package:uidb/src/features/authentication/screens/login/login_screen.dart';
import 'package:uidb/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? bpdSecondaryColor : bpdPrimaryColor,
        body: Stack(
          children: [
            bpdFadeInAnimation(
              durationInMs: 1200,
              animate: bpdAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                topBefore: 0,
                topAfter: 0,
                rightAfter: 0,
                rightBefore: 0,
              ),
              child: Container(
                padding: const EdgeInsets.all(bpdDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: const AssetImage(bpdWelcomeImage), height: height* 0.6,),
                    Column(
                      children: [
                        Text(bpdWelcomeTitle, style: Theme.of(context).textTheme.displayMedium,),
                        Text(bpdWelcomeSubTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                      ],
                    ),
                    Row(
                    children: [
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () => Get.to(()=> const LoginScreen()),
                              child: Text(bpdLogin.toUpperCase()))),
                      const SizedBox(width: 10.0,),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () => Get.to(() => const SignupScreen()),
                              child: Text(bpdSignup.toUpperCase()))),
                    ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
