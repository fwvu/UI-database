import 'package:flutter/material.dart';
import 'package:uidb/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';


class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: (){},
            icon: const Image(image: AssetImage(bpdGoogleSignupImage), width: 20.0,),
            label: Text(bpdSignupWithGoogle.toUpperCase()),
          ),
        ),
        TextButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupScreen())
            );
          },
          child: Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: bpdNotHaveAnAccount, style: Theme.of(context).textTheme.bodyMedium),
                  TextSpan(text: bpdSignup.toUpperCase(),)
                ]
            ),
          ),
        ),
      ],
    );
  }
}