import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {


  const FormHeaderWidget({Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.textAlign,

  }) : super(key: key);

  final String image,title,subTitle;
  final TextAlign ? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(image), height: size.height * 0.2),
        Text(title, style: Theme.of(context).textTheme.headlineMedium,),
        Text(subTitle, textAlign: textAlign , style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}
