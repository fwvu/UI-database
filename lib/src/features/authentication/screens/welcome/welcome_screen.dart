import 'package:flutter/material.dart';
import 'package:uidb/src/constants/colors.dart';
import 'package:uidb/src/constants/image_strings.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? bpdSecondaryColor : bpdPrimaryColor,
      body: Container(
        padding: EdgeInsets.all(bpdDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(bpdWelcomeImage), height: height* 0.6,),
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
                      onPressed: () {},
                      child: Text(bpdLogin.toUpperCase()))),
              SizedBox(width: 10.0,),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(bpdSignup.toUpperCase()))),
            ],
            )
          ],
        ),
      )
    );
  }
}
