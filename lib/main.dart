import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uidb/firebase_options.dart';
import 'package:uidb/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:uidb/src/features/repository/Dashboard/dashboard.dart';
import 'package:uidb/src/features/repository/authentication_repository/authentication_repository.dart';
import 'package:uidb/src/utils/theme/theme.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: bpdAppTheme.lightTheme,
      darkTheme: bpdAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      //home: const Dashboard(),
      home: const SplashScreen(),
      //home: const CircularProgressIndicator(),
    );
  }
}
