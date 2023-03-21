import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidb/src/constants/sizes.dart';
import 'package:uidb/src/features/authentication/model/user_model.dart';
import 'package:uidb/src/features/repository/controllers/profile_controller.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final contoller = Get.put(ProfileController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_left), color: Colors.black,),
        title: Text(bpdProfileEdit, style: Theme.of(context).textTheme.headlineSmall),
        centerTitle: true,
        elevation: 0,
        backgroundColor: bpdPrimaryColor,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(bpdDefaultSize),
          child: FutureBuilder(
            future: contoller.getUserData(),
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  UserModel userData = snapshot.data as UserModel;
                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120, height:  120,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100), child: const Image(image: AssetImage(bpdProfileImage))),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: bpdPrimaryColor),
                              child: const Icon(Icons.camera, color: Colors.black, size: 20),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Form(child: Column(
                        children: [
                          TextFormField(
                            initialValue: userData.fullName,
                            decoration: const InputDecoration(
                              label: Text(bpdFullName),
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(height: bpdFormHeight - 20),
                          TextFormField(
                            initialValue: userData.email,
                            decoration: const InputDecoration(
                              label: Text(bpdEmail),
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          const SizedBox(height: bpdFormHeight - 20),
                          TextFormField(
                            initialValue: userData.phoneNo,
                            decoration: const InputDecoration(
                              label: Text(bpdPhone),
                              prefixIcon: Icon(Icons.phone),
                            ),
                          ),
                          const SizedBox(height: bpdFormHeight - 20),
                          TextFormField(
                            obscureText: true,
                            initialValue: userData.password,
                            decoration: const InputDecoration(
                              label: Text(bpdPassword),
                              prefixIcon: Icon(Icons.password),
                            ),
                          ),
                          const SizedBox(height: bpdFormHeight),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () => Get.to(() => const EditProfileScreen()),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: bpdPrimaryColor, side: BorderSide.none, shape: const StadiumBorder()),
                              child: const Text(bpdProfileEdit, style: TextStyle(color: bpdDarkColor),),
                            ),
                          ),
                        ],
                      ))
                    ],
                  );
                } else if (snapshot.hasError){
                  return Center(child: Text(snapshot.error.toString()));
                } else{
                  return const Center(child: Text("something went wrong"));
                }
              } else{
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
