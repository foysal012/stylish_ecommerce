import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../home/view/home_screen.dart';
import 'intro_page1.dart';
import 'intro_page2.dart';
import 'intro_page3.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {

  PageController controller = PageController();
  bool onLastPage = false;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
              onLastPage = (value==2);
              currentPage = value;
              });
            },
            controller: controller,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3()
            ],
          ),

          Container(
            alignment: Alignment(0.0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                currentPage!=0?
                GestureDetector(
                    onTap:(){
                      controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: Text('Prev',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    )
                ):GestureDetector(
                    onTap:(){
                      controller.jumpToPage(2);
                    },
                    child: Text('Skip',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),

                SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                ),

                onLastPage?
                GestureDetector(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                    child: Text('Done',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ):GestureDetector(
                    onTap:(){
                      controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: Text('Next',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
