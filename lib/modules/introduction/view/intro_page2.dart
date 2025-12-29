import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/App_text.dart';
import '../../../core/constants/app_image.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17.0),
      color: Colors.blue[200],
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Spacer(),

          Image.asset('${AppImage.intro2}'),
          Gap(10.0),

          Text('${AppText.introTitle2}',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          Gap(10.0),

          Text('${AppText.introDescription2}',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black38
            ),
          ),

          Spacer(),
        ],
      ),
    );
  }
}
