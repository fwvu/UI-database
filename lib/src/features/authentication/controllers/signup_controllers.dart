import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:uidb/src/features/authentication/model/user_model.dart';
import 'package:uidb/src/features/repository/Dashboard/dashboard.dart';
import 'package:uidb/src/features/repository/user_repository/user_repository.dart';


class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    Get.to(() => const Dashboard());
  }

}
