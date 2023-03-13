import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/constants/text_strings.dart';
import 'package:uidb/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OtpController());
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(bpdDefaultSize),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(bpdOtpTitle, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 60.0,
            ),),
            Text(bpdOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 30.0),
            const Text("$bpdOtpMessage support@threestooges.com", textAlign: TextAlign.center,),
            const SizedBox(height: 10.0),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.cyan.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                otp = code;
                OtpController.instance.verifyOTP(otp);
              }

              //{print("Otp Is => $code");},
            ),
            SizedBox(
              width: double.infinity,
             child: ElevatedButton(onPressed:(){
               OtpController.instance.verifyOTP(otp);
             }, child: const Text("next")),
            )
          ],
        )
      ),
    );
  }
}
