import 'package:flutter/material.dart';
import 'package:flutter_learn/usecase/getX/increment_app/increment_view.dart';
import 'package:flutter_learn/usecase/getX/pages/auth/login_page.dart';
import 'package:flutter_learn/usecase/getX/routes/routes.dart';
import 'package:flutter_learn/usecase/page_indicator/pages/main_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: Routes.incrementView,
      getPages: AppRoutes.routes,
    );
  }
}
