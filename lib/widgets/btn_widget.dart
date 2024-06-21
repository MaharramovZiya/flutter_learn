import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  const BtnWidget({
    required this.onTap,
    super.key,
    required this.width,
  });

  final double width;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: width,
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text("Sign in"),
      ),
    );
  }
}
