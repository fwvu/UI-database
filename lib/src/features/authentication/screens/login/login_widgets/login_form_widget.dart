import 'package:flutter/material.dart';
import 'package:uidb/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:uidb/src/features/repository/authentication_repository/authentication_repository.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';


class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var emailLoginCont = TextEditingController();
    var passLoginCont = TextEditingController();

    return Container(
        padding: const EdgeInsets.symmetric(vertical: bpdFormHeight - 10),
        child: Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: emailLoginCont,
                    decoration: const InputDecoration(
                    label: Text(bpdEmail),
                    prefixIcon: Icon(Icons.person),
                  ),
                  ),
                  const SizedBox(height: bpdFormHeight -20),
                  TextFormField(
                    controller: passLoginCont,
                    obscureText: true,
                    decoration: const InputDecoration(
                      label:Text(bpdPassword),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.remove_red_eye_sharp),
                      ),
                    ),
                  ),
                  const SizedBox(height: bpdFormHeight -20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        ForgetPasswordScreen.buildShowModalBottomSheet(context);
                      },
                        child: const Text(bpdForgetPassword)),
                    ),
                  const SizedBox(height: bpdFormHeight -20),
                  SizedBox(
                   width: double.infinity,
                   child: ElevatedButton(
                    onPressed: (){
                      AuthenticationRepository.instance.loginUserWithEmailAndPassword(emailLoginCont.text.trim(), passLoginCont.text.trim());
                    },
                    child: Text(bpdLogin.toUpperCase(),)
                   ),
                  ),
                ]
            )
        )
    );
  }

}


