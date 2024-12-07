import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/opacity_controller.dart';

class SecondExample extends StatefulWidget {
  const SecondExample({super.key});

  @override
  State<SecondExample> createState() => _SecondExampleState();
}

class _SecondExampleState extends State<SecondExample> {
  OpacityController opacityController = Get.put(OpacityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Example'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 60),
          Obx(() {
            return Center(
              child: Container(
                height: 400,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple
                        .withOpacity(opacityController.opacity.value)),
              ),
            );
          }),
          const SizedBox(height: 20),
          Obx(() {
            return Center(
              child: Slider(
                  value: opacityController.opacity.value,
                  onChanged: (value) {
                    opacityController.setOpacity(value);
                  }),
            );
          })
        ],
      )),
    );
  }
}
