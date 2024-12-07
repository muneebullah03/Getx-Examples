import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/image_picker_conroller.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  ImagePickerController imagePickerConroller = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Screen'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                  radius: 50,
                  backgroundImage: imagePickerConroller.imagePath.isNotEmpty
                      ? FileImage(
                          File(imagePickerConroller.imagePath.toString()))
                      : null),
            ),
            TextButton(
                onPressed: () {
                  imagePickerConroller.getImage();
                },
                child: const Text('Pick Image'))
          ],
        ),
      ),
    );
  }
}
