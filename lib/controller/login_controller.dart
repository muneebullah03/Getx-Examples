// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  // Corrected variable names
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RxBool isLoading = false.obs;

  Future<void> logIn() async {
    print('Api hit');
    isLoading.value = true;
    const String uri = 'https://reqres.in/api/login';
    try {
      final response = await http.post(
        Uri.parse(uri),
        body: {
          'email': emailController.text,
          'password': passwordController.text,
        },
      );
      print('Api hit2');
      final data = jsonDecode(response.body);
      print(response.statusCode);

      // Reset loading state after API call
      isLoading.value = false;

      if (response.statusCode == 200) {
        // Handle successful login
        Get.snackbar('Success', 'Login successful!');
        print('Api hit successfully');
      } else {
        // Handle failure response
        String errorMessage = data['error'] ?? 'Unknown error occurred';
        Get.snackbar('Login Failed', errorMessage);
        print('Api not working');
      }
    } catch (e) {
      // Reset loading state in case of an error
      isLoading.value = false;
      Get.snackbar('Login Failed', 'An unexpected error occurred.');
      print('Api error');
    }
  }
}
