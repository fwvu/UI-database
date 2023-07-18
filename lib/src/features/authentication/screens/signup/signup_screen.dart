import 'package:flutter/material.dart';
import 'package:uidb/src/common_widgets/form/form_header_widget.dart';
import 'package:uidb/src/constants/image_strings.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/constants/text_strings.dart';
import 'package:uidb/src/features/authentication/screens/signup/signup_widgets/signup_footer_widget.dart';
import 'package:uidb/src/features/authentication/screens/signup/signup_widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(bpdDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FormHeaderWidget(image: bpdWelcomeImage, title: bpdSignupTitle, subTitle: bpdSignupSubTitle),
                SignupFormWidget(),
                SignupFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
} // end of class



