import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uidb/src/features/authentication/controllers/signup_controllers.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';


class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(SignUpController());
    final _formkey= GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: bpdFormHeight-10),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullname,
              decoration: const InputDecoration(
                label: Text(bpdFullName),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: bpdFormHeight -20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(bpdEmail),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            IntlPhoneField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'AU',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            const SizedBox(height: bpdFormHeight -20),
            TextFormField(
              obscureText: true,
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text(bpdPassword),
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp)
                ),
              ),
            ),
            const SizedBox(height: bpdFormHeight -20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    if(_formkey.currentState!.validate()){
                      SignUpController.instance.registerUser(controller.email.text.trim(),controller.password.text.trim());
                    }
                  },
                  child: Text(bpdSignup.toUpperCase(),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

