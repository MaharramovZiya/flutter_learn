import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void username() {
    usernameController.text;
  }

  void password() {
    passwordController.text;
  }
}
