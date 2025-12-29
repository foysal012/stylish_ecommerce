import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish_ecommerce/core/constants/App_text.dart';
import 'package:stylish_ecommerce/core/constants/app_image.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      padding: EdgeInsets.all(17.0),
      color: Colors.red[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('${AppImage.intro1}'),
          Gap(10.0),
          
          Text('${AppText.introTitle1}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          Gap(10.0),
          
          Text('${AppText.introDescription1}',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black38
            ),
          )

        ],
      ),
    );
  }
}
