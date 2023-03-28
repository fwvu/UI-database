import 'package:flutter/material.dart';
import 'package:uidb/src/common_widgets/form/form_header_widget.dart';
import 'package:uidb/src/constants/image_strings.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/constants/text_strings.dart';
import 'login_widgets/login_footer_widget.dart';
import 'login_widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                FormHeaderWidget(
                    image: bpdWelcomeImage,
                    title: bpdLoginTitle,
                    subTitle: bpdLoginSubTitle),
                LoginFormWidget(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
