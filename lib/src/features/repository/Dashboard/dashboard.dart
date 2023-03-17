
import 'package:flutter/material.dart';
import 'package:uidb/src/constants/colors.dart';
import 'package:uidb/src/constants/image_strings.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/constants/text_strings.dart';
import 'package:uidb/src/features/repository/authentication_repository/authentication_repository.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black,),
        title: Text(bpdAppName, style: Theme.of(context).textTheme.headlineSmall),
        centerTitle: true,
        elevation: 0,
        backgroundColor: bpdPrimaryColor,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: bpdCardBgColor),
            child: IconButton(onPressed: (){}, icon: const Image(image: AssetImage(bpdSplashImage))),
          )
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
              Text("Use get to display name here"),
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
