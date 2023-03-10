import 'package:flutter/material.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';


class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({
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
          onPressed: (){},
          child: Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: bpdAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyMedium),
                  TextSpan(text: bpdLogin.toUpperCase(),)
                ]
            ),
          ),
        ),
      ],
    );
  }
}