import 'package:dartz/dartz.dart';
import 'package:e_commerce/Featcher/Auth/Presentation/SignIn/functions/functions.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:e_commerce/core/utils/app_snack_bar.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SigninController extends GetxController {

 static SigninController to =Get.find();
  SignInFunctions _signInFunctions = new SignInFunctions();

  RxString response_value = "".obs;

  signIn() async {
    Either<http.Response, Failure> _response = await _signInFunctions.logIn();

    _response.fold((response) {
      response_value(response.body);

      response_value.value = response.body;
    }, (error) {
      AppSnackBar.showErrorMessage();
    });
  }
}
