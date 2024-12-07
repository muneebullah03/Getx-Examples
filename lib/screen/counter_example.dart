import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/counter_controller.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(child: Center(child: Obx(() {
        return Text(
          counterController.counter.toString(),
          style: const TextStyle(fontSize: 30),
        );
      }))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
