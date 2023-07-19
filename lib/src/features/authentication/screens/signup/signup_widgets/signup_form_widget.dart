import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uidb/src/features/authentication/controllers/signup_controllers.dart';
import 'package:uidb/src/features/authentication/model/user_model.dart';
import 'package:uidb/src/features/repository/authentication_repository/authentication_repository.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({super.key,});

  @override
  Widget build(BuildContext context) {

    final auth = Get.put(AuthenticationRepository());
    final controller = Get.put(SignUpController());
    final formkey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: bpdFormHeight - 10),
      child: Form(
        key: formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text(bpdFullName),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: bpdFormHeight - 20),
            TextFormField(
              controller: controller.email,
              validator: (value){
                if (value == null || value.isEmpty){
                  return 'Email Required';
                } else {null;}
              },
              decoration: const InputDecoration(
                label: Text(bpdEmail),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: bpdFormHeight - 20),
           /* TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(bpdPhone),
                prefixIcon: Icon(Icons.phone),
              ),
            ),                    */
          IntlPhoneField(
              controller: controller.phoneNo,
              disableLengthCheck: true,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'AU',
              //onChanged: (phone) {print(phone.completeNumber);},
            ),
            const SizedBox(height: bpdFormHeight - 20),
            TextFormField(
              obscureText: true,
              controller: controller.password,
              validator: (value){
                if (value == null || value.isEmpty){
                  return 'Password Required';
                } else {null;}
              },
              decoration: const InputDecoration(
                label: Text(bpdPassword),
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(Icons.remove_red_eye_sharp)),
              ),
            ),
            const SizedBox(height: bpdFormHeight - 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  if (formkey.currentState!.validate()) {
                    // email and password signup
                    await auth.createUserWithEmailAndPassword(controller.email.text.trim(), controller.password.text.trim());

                    // Get User info and pass it to controller to place in firestore
                    final user = UserModel(
                      email: controller.email.text.trim(),
                      password: controller.password.text.trim(),
                      fullName: controller.fullName.text.trim(),
                      phoneNo: controller.phoneNo.text.trim(),
                    );
                    SignUpController.instance.createUser(user);
                  }
                },
                child: Text(bpdSignup.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
