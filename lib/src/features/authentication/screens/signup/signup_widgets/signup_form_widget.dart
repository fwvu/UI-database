import 'package:flutter/material.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';


class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: bpdFormHeight-10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(bpdFullName),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: bpdFormHeight -20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(bpdEmail),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: bpdFormHeight -20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(bpdPhone),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: bpdFormHeight -20),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(bpdPassword),
                prefixIcon: Icon(Icons.password),
              ),
            ),
            const SizedBox(height: bpdFormHeight -20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text(bpdSignup.toUpperCase(),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}