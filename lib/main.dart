import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/bottom_navber_screen/view/bottom_navber_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
        debugShowCheckedModeBanner: false,
        // home: const SplashScreen(),
        home: const BottomNavigationScreen(),
        // home: const SelectAddressScreen(),
      ),
    );
  }
}

