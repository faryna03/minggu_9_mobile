import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:view/controller/democontroller.dart';

class DemoPage extends StatelessWidget {
  final DemoController ctrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0), child: Text(Get.arguments)),
            SwitchListTile(
              value: ctrl.isDark,
              title: Text("Tekan untuk mengubah mode tema"),
              onChanged: ctrl.changeTheme,
            ),
            Padding(padding: const EdgeInsets.all(8.0)),
            ElevatedButton(
                onPressed: () => Get.snackbar(
                    "Snackbar", "Halo ini adalah pesan snackbar",
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.white,
                    backgroundColor: Colors.black87),
                child: Text('Snack Bar')),
            Padding(padding: const EdgeInsets.all(8.0)),
            ElevatedButton(
                onPressed: () => Get.defaultDialog(
                    title: "Dialog",
                    content: Text(
                      'Hey, form dialog',
                    )),
                child: Text('dialog')),
            Padding(padding: const EdgeInsets.all(8.0)),
            ElevatedButton(
                onPressed: () => Get.bottomSheet(Container(
                      height: 150,
                      color: Colors.white,
                      child: Text(
                        'Hai dari bottom sheet',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    )),
                child: Text('Bottom sheet')),
            Padding(padding: const EdgeInsets.all(8.0)),
            ElevatedButton(
                onPressed: () => Get.offNamed('/'),
                child: Text('Back to Home')),
          ],
        ),
      ),
    );
  }
}
