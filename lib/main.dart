import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home_controller.dart';
import 'home/home_page.dart';
import 'home/page3.dart';
import 'pag2/pag2_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: AppBinding(),
      // home: HomePage(),
      initialRoute: '/home',
      getPages: [
        GetPage(
            name: '/home', page: () => HomePage()), //binding: AppBinding()),
        GetPage(name: '/pg2', page: () => Page2()),
        GetPage(name: '/pg3', page: () => Page3()),
      ],
    );
  }
}

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
