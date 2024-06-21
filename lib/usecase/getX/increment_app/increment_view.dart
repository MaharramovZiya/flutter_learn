import 'package:flutter/material.dart';
import 'package:flutter_learn/usecase/getX/increment_app/increment_controller.dart';
import 'package:flutter_learn/usecase/getX/routes/routes.dart';
import 'package:get/get.dart';

class IncrementView extends StatelessWidget {
  const IncrementView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IncrementController incrementController =
        Get.put(IncrementController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter view"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text("Count : ${incrementController.count}")),
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.secondpage);
              },
              child: Text("Second page go to")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.main_page);
              },
              child: Text("Main page go to"))
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              incrementController.incriment();
            }),
      ),
    );
  }
}
