import 'package:flutter/material.dart';
import 'package:uidb/src/constants/image_strings.dart';
import 'package:uidb/src/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image(image: AssetImage(bpdWelcomeImage)),
            Text(bpdWelcomeTitle),
            Text(bpdWelcomeSubTitle),
            Row(
              children: [
                OutlinedButton(onPressed: (){}, child: Text(bpdLogin)),
                ElevatedButton(onPressed: (){}, child: Text(bpdSignup)),
              ],
            )
          ],
        ),
      )
    );
  }
}
