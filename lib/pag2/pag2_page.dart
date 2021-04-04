import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testeGETX/home/home_controller.dart';

class Page2 extends StatelessWidget {
  //final HomeController _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 2"),
        actions: [
          IconButton(
            icon: Icon(Icons.looks_3_outlined),
            onPressed: () =>
                //Get.to(Page2()),
                Get.toNamed('pg3'), //
          ),
        ],
      ),
      body: Container(
        child: Center(
            child: Column(
          children: [
            GetBuilder<HomeController>(
                autoRemove: false,
                builder: (_) {
                  return Text(
                    'GetBuilder: ${_.count.value.toString()}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
            GetX<HomeController>(
                autoRemove: false,
                builder: (ct) {
                  return Text(
                    'GetX: ${ct.count.value.toString()}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
            // Text(
            //   _homeController.count.value.toString(),
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        )),
      ),
    );
  }
}
