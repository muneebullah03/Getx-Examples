import 'package:get/get.dart';

class FouthExampleController extends GetxController {
  RxList<String> furitList =
      ['Apple', 'Mango', 'Banana', 'Orange', 'PineApple'].obs;
  RxList favirateFuritList = [].obs;

  addFavirteFurite(value) {
    favirateFuritList.add(value);
  }

  removeFavirteFurite(value) {
    favirateFuritList.remove(value);
  }
}
