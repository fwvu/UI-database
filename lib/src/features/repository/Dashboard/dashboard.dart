import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:uidb/src/constants/colors.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/constants/text_strings.dart';
import 'package:uidb/src/features/repository/profile/profile_screen.dart';


class Dashboard extends StatelessWidget {

  final String? email;

  const Dashboard({Key? key, this.email}) : super(key: key);

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
              const SizedBox(height: 20.0),
              Text(bpdDashboardHeading, style: Theme.of(context).textTheme.headlineMedium,),
              Text(email!, style: Theme.of(context).textTheme.headlineSmall,),
              const SizedBox(height: 40.0),
              Center(child: QrImage(
                data: ("Food For Dirt $email"),
                backgroundColor: Colors.white,
                size: 350.0,
              ),),
              Text(bpdQrImage, style: Theme.of(context).textTheme.bodyMedium,),
              const SizedBox(height: 40.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text(bpdUserStats.toUpperCase(),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
