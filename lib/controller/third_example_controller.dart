import 'package:get/get.dart';

class ThirdExampleController extends GetxController {
  RxBool notification = false.obs;

  setNotification(bool value) {
    notification.value = value;
  }
}
