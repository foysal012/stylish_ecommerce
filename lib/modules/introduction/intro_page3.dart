import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../core/constants/App_text.dart';
import '../../core/constants/app_image.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17.0),
      color: Colors.amber[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('${AppImage.intro3}'),
          Gap(10.0),

          Text('${AppText.introTitle1}',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          Gap(10.0),

          Text('${AppText.introDescription3}',
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
