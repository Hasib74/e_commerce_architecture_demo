import 'package:get/get.dart';

enum CurrentPage {
  HOME,
  FAV,
  CART,
}

class DisplayController extends GetxController {
  static DisplayController to = Get.find();

  Rx<CurrentPage> currentPage = CurrentPage.HOME.obs;
}
