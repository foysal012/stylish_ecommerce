import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stylish_ecommerce/core/constants/app_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  PackageInfo? packageInfo;
  Future<void> getAppVersionInfo()async{
    packageInfo = await PackageInfo.fromPlatform();
    if (!mounted) return;
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();
    getAppVersionInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(),
            Image.asset('${AppImage.splashLogo}'),
            Spacer(),

            SpinKitThreeInOut(
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: index.isEven ? Colors.red : Colors.blue,
                    shape: BoxShape.circle
                  ),
                );
              },
            ),
            Gap(10.0),

            Text('v. ${packageInfo?.version??'1.0.2'}',style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                fontWeight: FontWeight.bold
            )),

            // Text('© ${DateTime.now().year} PlayOn24',style: TextStyle(
            //     fontSize: 10.0,
            //     color: Colors.black,
            //     fontWeight: FontWeight.bold
            // ),),
            // Gap(10.0),

            Text('Design & Developed by',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Foysal Joarder',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            Gap(50.0),
          ],
        ),
      ),
    );
  }
}
