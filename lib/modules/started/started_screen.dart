import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:stylish_ecommerce/core/constants/app_image.dart';
import 'package:stylish_ecommerce/modules/home/view/home_screen.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      body: Container(
        padding: EdgeInsets.all(10.0),
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('${AppImage.startedImage}'), fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('You want\nAuthentic, here\nyou go!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 34,
                color: Colors.white,
                fontWeight: FontWeight.w500
              ),
            ),
            Gap(10.0),

            Text('Find it here, buy it now!',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.normal
              ),
            ),
            Gap(44.0),

            GestureDetector(
              onTap: () => Get.to(() => HomeScreen()),
              child: Container(
                height: 52,
                margin: EdgeInsets.symmetric(horizontal: 55.0),
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Color(0xffF83758),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: Text('Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
            Gap(50.0)
          ],
        ),
      ),
    );
  }
}
