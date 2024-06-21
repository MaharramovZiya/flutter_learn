import 'package:flutter/material.dart';
import 'package:flutter_learn/usecase/getX/controllers/input_controller.dart';
import 'package:flutter_learn/widgets/btn_widget.dart';
import 'package:flutter_learn/widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputController = InputController();
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Cross Platform"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFieldWidget(
                controller: inputController.usernameController,
                labelText: "Username",
                sufficIcon: const Icon(Icons.person)),
            const SizedBox(
              height: 20,
            ),
            TextFieldWidget(
                controller: inputController.usernameController,
                labelText: "Password",
                sufficIcon: const Icon(Icons.password)),
            const SizedBox(
              height: 20,
            ),
            BtnWidget(
              width: width,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
