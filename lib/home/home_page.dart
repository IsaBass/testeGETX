import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.looks_two),
            onPressed: () =>
                //Get.to(Page2()),
                Get.toNamed('pg2'), //
          ),
          IconButton(
            icon: Icon(Icons.looks_3_outlined),
            onPressed: () =>
                //Get.to(Page2()),
                Get.toNamed('pg3'), //
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<HomeController>(
                init: Get.find<HomeController>(),
                builder: (_) {
                  print('refez GetBuilder');
                  return Text(
                    'GetBuilder: ${_.count.value.toString()}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
            GetX<HomeController>(builder: (ct) {
              print('refez GetX');
              return Text(
                'GetX: ${ct.count.value.toString()}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            Obx(() {
              print('refez Obx');
              return Text(
                'Obx: ${_homeController.count.value.toString()}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () => _homeController.increment(),
              child: Text("Increment"),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () => _homeController.decrement(),
              child: Text("Decrement"),
            ),
            SizedBox(height: 30),
            RaisedButton(
              onPressed: () => Get.snackbar(
                'Valor Count',
                "O valor é ${_homeController.count.value}",
                snackPosition: SnackPosition.TOP,
                snackStyle: SnackStyle.FLOATING,
                backgroundColor: Colors.red.withOpacity(0.5),
              ),
              child: Text("Snack"),
            ),
            Row(
              children: [
                RaisedButton(
                  onPressed: () => Get.defaultDialog(
                    onCancel: () => Get.back(),
                    onConfirm: () {
                      print("Ok");
                      Get.back();
                    },
                    middleText: "Dialog made in 3 lines of code",
                    title: "Minha Alerta",
                    textConfirm: "confirmação",
                    confirmTextColor: Colors.white,
                  ),
                  child: Text("Dialog"),
                ),
                RaisedButton(
                  onPressed: () => Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                              leading: Icon(Icons.music_note),
                              title: Text('Música'),
                              onTap: () => {}),
                          ListTile(
                            leading: Icon(Icons.videocam),
                            title: Text('Vídeo'),
                            onTap: () => {},
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: Text("BottomSheet"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
