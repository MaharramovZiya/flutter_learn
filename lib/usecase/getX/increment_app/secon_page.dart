import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeconPage extends StatelessWidget {
  const SeconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second view"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Come back"))
          ],
        ),
      ),
    );
  }
}
