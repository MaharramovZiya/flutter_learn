import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
const TextFieldWidget({ Key? key, required this.controller, required this.labelText, required this.sufficIcon }) : super(key: key);

final TextEditingController controller;
final String labelText;
final Widget sufficIcon;
  @override
  Widget build(BuildContext context){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        suffixIcon: sufficIcon
        
      ),
    );
  }
}