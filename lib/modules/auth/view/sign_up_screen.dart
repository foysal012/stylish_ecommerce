import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish_ecommerce/core/constants/app_image.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final _userNameEmailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _userNameEmailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
            Text('Create an\naccount',
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
                  hintText: 'Username or Email',
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
            Gap(31.0),

            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Color(0xffA8A8A9),),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xff676767),
                      fontWeight: FontWeight.w500
                  ),
                  suffixIcon: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.visibility)
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
            Gap(31.0),

            TextFormField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Color(0xffA8A8A9),),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xff676767),
                      fontWeight: FontWeight.w500
                  ),
                  suffixIcon: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.visibility)
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
            Gap(9.0),

            Row(
              children: [
                Checkbox(
                    value: true,
                    onChanged: (value){

                    }
                ),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'By clicking the',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff676767),
                              fontWeight: FontWeight.w500
                          ),
                        ),

                        TextSpan(
                          text: ' Register ',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffFF4B26),
                              fontWeight: FontWeight.w500
                          ),
                        ),

                        TextSpan(
                          text: 'button, you agree\nto the public offer',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff676767),
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ]
                  ),
                )
              ],
            ),
            Gap(52.0),

            Container(
              height: 52,
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xffF83758),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Text('Create Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700
                ),
              ),
            ),
            Gap(75.0),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('-Or Continue with-',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff676767),
                        fontWeight: FontWeight.w500
                    )
                ),
                Gap(20.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xffF83758),
                            width: 2,
                          ),
                          color: Color(0xffFCF3F6)
                      ),
                      child: Image.asset('${AppImage.google}'),
                    ),
                    Gap(10.0),

                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xffF83758),
                            width: 2,
                          ),
                          color: Color(0xffFCF3F6)
                      ),
                      child: Image.asset('${AppImage.apple}'),
                    ),
                    Gap(10.0),

                    Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xffF83758),
                            width: 2,
                          ),
                          color: Color(0xffFCF3F6)
                      ),
                      child: Image.asset('${AppImage.facebook}'),
                    )
                  ],
                ),
                Gap(30.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('I Already Have an Account',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff676767),
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Gap(5.0),
                    Text('Login',
                      style: TextStyle(
                          fontSize: 12,
                          // color: Color(0xffF83758),
                          color: Colors.transparent,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationColor: Color(0xffF83758),
                          decorationThickness: 2,
                          shadows: [
                            Shadow(
                              color: Color(0xffF83758),
                              offset: Offset(0, -2), // Move text 5 pixels above the underline
                            ),
                          ],
                      ),
                    ),
                  ],
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
