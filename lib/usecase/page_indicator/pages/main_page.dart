import 'package:flutter/material.dart';
import 'package:flutter_learn/usecase/page_indicator/pages/page2.dart';
import 'package:flutter_learn/usecase/page_indicator/pages/page3.dart';
import 'package:flutter_learn/usecase/page_indicator/pages/page4.dart';
import 'package:flutter_learn/usecase/page_indicator/pages/page_1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 500,
                width: 350,
                child: PageView(
                  controller: _controller,
                  children: const [
                    Page1(),
                    Page2(),
                    Page3(),
                    Page4(),
                  ],
                ),
              ),
            ),
            SmoothPageIndicator(
                effect: const ExpandingDotsEffect(
                    dotWidth: 30,
                    spacing: 29,
                    dotHeight: 20,
                    activeDotColor: Colors.amberAccent,
                    dotColor: Colors.amber),
                controller: _controller,
                count: 4)
          ],
        ),
      ),
    );
  }
}
