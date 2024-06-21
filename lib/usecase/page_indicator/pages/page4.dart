import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Colors.white,
            )),
      ),
    );
  }
}