
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:uidb/src/constants/colors.dart';
import 'package:uidb/src/constants/image_strings.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/constants/text_strings.dart';
import 'package:uidb/src/features/repository/authentication_repository/authentication_repository.dart';
import 'package:uidb/src/features/repository/profile/profile_screen.dart';


class Dashboard extends StatelessWidget {
  String? email;
  Dashboard({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu), color: Colors.black,),
        title: Text(bpdAppName, style: Theme.of(context).textTheme.headlineSmall),
        centerTitle: true,
        elevation: 0,
        backgroundColor: bpdPrimaryColor,
        actions: [
           IconButton(onPressed: ()=> Get.to(()=> const ProfileScreen()), icon: const Icon(Icons.person)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(bpdDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              Text("Welcome"),
              Text(email!),
              SizedBox(height: 20.0),
              Image(image: AssetImage(bpdSplashImage)),
              Text("make this QR image"),
              SizedBox(height: 20.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      AuthenticationRepository.instance.logout();
                    },
                    child: Text(bpdLogout.toUpperCase(),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
