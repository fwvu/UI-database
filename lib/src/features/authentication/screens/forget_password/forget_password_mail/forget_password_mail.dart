import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import '../../../../../common_widgets/form/form_header_widget.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(bpdDefaultSize),
        child: Column(
          children: [
            const SizedBox(height: bpdDefaultSize * 4),
            const FormHeaderWidget(
              image: bpdForgetPasswordImage,
              title: bpdForgetPassword,
              subTitle: bpdForgetPasswordSubTitle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: bpdFormHeight),
            Form(
              child: Column(
                children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text (bpdEmail),
                    hintText: bpdEmail,
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                  ),
                ),
                const SizedBox(height:20),
                SizedBox(width: double.infinity, child: ElevatedButton(
                  onPressed: (){
                    //Get.to(() => const OTPScreen());
                  },
                  child: const Text("next"),
                ),)
               ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}


