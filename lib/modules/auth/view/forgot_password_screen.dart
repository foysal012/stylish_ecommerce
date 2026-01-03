import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  final _userNameEmailController = TextEditingController();

  @override
  void dispose() {
    _userNameEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(60.0),
            Text('Forgot\npassword?',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            Gap(36.0),

            TextFormField(
              controller: _userNameEmailController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Color(0xffA8A8A9),),
                  hintText: 'Enter your email address',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xff676767),
                      fontWeight: FontWeight.w500
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          width: 2,
                          color: Color(0xffA8A8A9)
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          width: 2,
                          color: Color(0xffA8A8A9)
                      )
                  )
              ),
            ),
            Gap(26.0),

            RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                      text: '*',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFF4B26),
                          fontWeight: FontWeight.w500,
                          // shadows: [
                          //   Shadow(
                          //     color: Color(0xffF83758),
                          //     offset: Offset(0, -0.3)
                          //   )
                          // ]
                      ),
                    ),

                    TextSpan(
                      text: ' We will send you a message to set or reset\nyour new password',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff676767),
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ]
              ),
            ),
            Gap(26.0),

            Container(
              height: 52,
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xffF83758),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Text('Submit',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
