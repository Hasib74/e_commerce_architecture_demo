import 'package:e_commerce/presentation/app_routes/app_routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Future.delayed(Duration(seconds: 4))
        .then((value) => Get.toNamed(AppRoutes.SIGN_IN));
  }
}
