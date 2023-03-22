import 'package:get/get.dart';
import 'package:uidb/src/features/authentication/model/user_model.dart';
import 'package:uidb/src/features/repository/authentication_repository/authentication_repository.dart';
import '../user_repository/user_repository.dart';


class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if(email != null){
      return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar("error", "Login to continue");
    }
  }


  updateRecord(UserModel user) async {
    await _userRepo.updateUserRecord(user);
  }

}