import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/fouth_example_controller.dart';

class FourthExample extends StatefulWidget {
  const FourthExample({super.key});

  @override
  State<FourthExample> createState() => _FourthExampleState();
}

class _FourthExampleState extends State<FourthExample> {
  FouthExampleController fouthExampleController =
      Get.put(FouthExampleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favuorit Item Screen'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: SafeArea(
            child: Card(
          child: ListView.builder(
              itemCount: fouthExampleController.furitList.length,
              itemBuilder: (context, index) {
                return ListTile(
                    onTap: () {
                      if (fouthExampleController.favirateFuritList.contains(
                          fouthExampleController.furitList[index].toString())) {
                        fouthExampleController.removeFavirteFurite(
                            fouthExampleController.furitList[index].toString());
                      } else {
                        fouthExampleController.addFavirteFurite(
                            fouthExampleController.furitList[index].toString());
                      }
                    },
                    title: Text(
                        fouthExampleController.furitList[index].toString()),
                    trailing: Obx(() {
                      return Icon(
                        Icons.favorite,
                        color: fouthExampleController.favirateFuritList
                                .contains(fouthExampleController
                                    .furitList[index]
                                    .toString())
                            ? Colors.red
                            : Colors.white,
                      );
                    }));
              }),
        )));
  }
}
