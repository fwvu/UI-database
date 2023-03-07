import 'package:flutter/material.dart';
import 'package:uidb/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:uidb/src/utils/theme/theme.dart';
import 'package:get/get.dart';

void main() {
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
      home: const SplashScreen(),
    );
  }
}

