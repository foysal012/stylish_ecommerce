import 'package:flutter/material.dart';
import 'modules/auth/view/forgot_password_screen.dart';
import 'modules/auth/view/sign_in_screen.dart';
import 'modules/auth/view/sign_up_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
      home: const ForgotPasswordScreen(),
    );
  }
}

