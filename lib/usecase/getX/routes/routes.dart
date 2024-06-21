// Classic Routes

import 'package:flutter_learn/usecase/getX/increment_app/increment_view.dart';
import 'package:flutter_learn/usecase/getX/increment_app/secon_page.dart';
import 'package:flutter_learn/usecase/page_indicator/pages/main_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String incrementView = '/increment';
  static const String secondpage = '/secondpage';
  static const String main_page = '/main-page';
}

class AppRoutes {
  static final routes = [
    GetPage(name: Routes.incrementView, page: ()=> const IncrementView()),
    GetPage(name: Routes.secondpage, page: ()=>  const SeconPage()),
    GetPage(name: Routes.main_page, page: ()=>   MainPage()),
  ];
}
