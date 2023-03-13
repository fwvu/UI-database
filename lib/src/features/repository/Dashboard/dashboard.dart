
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidb/src/constants/text_strings.dart';
import 'package:uidb/src/features/repository/authentication_repository/authentication_repository.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Welcome to My Paradise'),
        Center(
          child: ElevatedButton(
          onPressed: (){
          AuthenticationRepository.instance.logout();
          },
          child: const Text(bpdLogout)
          )

          ,
        )],
      ),
    );
  }
}
