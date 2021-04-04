import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 3"),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Get.offNamedUntil('/home', (r) => Get.currentRoute == '/home');
              // Get.offNamedUntil('/home', (r) => false);

              navigator.popUntil(ModalRoute.withName('/home'));
            },
          ),
          IconButton(
            icon: Icon(Icons.looks_two_outlined),
            onPressed: () => Get.toNamed('/pg2'), //
          ),
        ],
      ),
      body: Container(
        child: Center(
            child: Column(
          children: [
            Text(
              'PAGINA 3',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        )),
      ),
    );
  }
}
