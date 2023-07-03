import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidb/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:uidb/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:uidb/src/features/repository/authentication_repository/exceptions/signup_email_password_failure.dart';
import '../../../constants/colors.dart';
import '../Dashboard/dashboard.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }


  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const SplashScreen());
    } else {
      Get.offAll(() => Dashboard(uid:user.uid));
    }
  }


  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const Dashboard())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      Get.snackbar("FIREBASE AUTH EXCEPTION -", (ex.message),
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text("Account creation failed",
        style: TextStyle(color: bpdWhiteColor),),
        messageText: Text(ex.message,
          //messageText: Text(e.toString(),
        style: const TextStyle(color: bpdWhiteColor),),
      );
      throw ex;
    } catch (_) {
      Get.showSnackbar(GetSnackBar(message: _.toString()));
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }


  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Get.snackbar("FIREBASE AUTH EXCEPTION", "Login",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text("Login Failed",
          style: TextStyle(color: bpdWhiteColor),),
        messageText: Text(e.toString(),
          style: const TextStyle(color: bpdWhiteColor),),
      );
    } catch (_) {}
  }


  Future<void> logout() async => await _auth.signOut();

}
