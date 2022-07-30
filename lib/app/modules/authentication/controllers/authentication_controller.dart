import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;

  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();

  final signupEmailController = TextEditingController();
  final signupPasswordController = TextEditingController();
  final signupUsernameController = TextEditingController();
}
