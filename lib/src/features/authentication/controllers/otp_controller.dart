import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidb/src/features/repository/Dashboard/dashboard.dart';
import 'package:uidb/src/features/repository/authentication_repository/authentication_repository.dart';

class OtpController extends GetxController {
  static OtpController get instance => Get.find ();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const Dashboard()) : Get.back();
  }
}