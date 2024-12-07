import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/third_example_controller.dart';

class ThirdExample extends StatefulWidget {
  const ThirdExample({super.key});

  @override
  State<ThirdExample> createState() => _ThirdExampleState();
}

class _ThirdExampleState extends State<ThirdExample> {
  ThirdExampleController thirdExampleController =
      Get.put(ThirdExampleController());
  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Example'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Notification'),
            Obx(() {
              return Switch(
                  value: thirdExampleController.notification.value,
                  onChanged: (value) {
                    thirdExampleController.setNotification(value);
                  });
            })
          ],
        ),
      )),
    );
  }
}
