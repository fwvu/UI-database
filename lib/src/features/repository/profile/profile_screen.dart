import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidb/src/constants/image_strings.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/features/repository/profile/edit_profile_screen.dart';
import 'package:uidb/src/features/repository/profile/profile_widgets/profile_menu.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_strings.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_left), color: Colors.black,),
        title: Text(bpdAppName, style: Theme.of(context).textTheme.headlineSmall),
        centerTitle: true,
        elevation: 0,
        backgroundColor: bpdPrimaryColor,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(isDark? Icons.sunny : Icons.mode_night)),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(bpdDefaultSize),
          child: Column(
            children: [
              SizedBox(
                width: 120, height:  120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100), child: const Image(image: AssetImage(bpdProfileImage))),
              ),
              const SizedBox(height: 10),
              Text(bpdProfileHeading, style: Theme.of(context).textTheme.headlineSmall,),
              Text(bpdProfileSubHeading, style: Theme.of(context).textTheme.bodyMedium,),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const EditProfileScreen()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: bpdPrimaryColor, side: BorderSide.none, shape: const StadiumBorder()),
                  child: const Text(bpdProfileEdit, style: TextStyle(color: bpdDarkColor),),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              /// Menu
              ProfileMenuWidget(title: "Settings", icon: Icons.settings, onPress: () {} ),
              ProfileMenuWidget(title: "Information", icon: Icons.info, onPress: () {} ),
              ProfileMenuWidget(title: "Billing", icon: Icons.wallet, onPress: () {} ),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(title: "Logout", icon: Icons.logout, textColor: Colors.red, endIcon: false, onPress: () {} ),
            ],
          ),
        ),
      ),
    );
  }
}


