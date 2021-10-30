import 'package:e_commerce/presentation/screen/authentication/sign_in.dart';
import 'package:e_commerce/presentation/screen/authentication/sign_up.dart';
import 'package:e_commerce/presentation/screen/cart/cart_screen.dart';
import 'package:e_commerce/presentation/screen/check_out/check_out_screen.dart';
import 'package:e_commerce/presentation/screen/display/display_screen.dart';
import 'package:e_commerce/presentation/screen/home/home_screen.dart';
import 'package:e_commerce/presentation/screen/product_details/product_details.dart';
import 'package:e_commerce/presentation/screen/splashScreen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String INITAL_SCREEN = "/";
  static String SIGN_IN = "sign_in/";
  static String SIGN_UP = "sign_up/";
  static String DISPLAY = "display/";
  static String PRODUCT_DETAILS = "product_details/";
  static String CART = '/cart';
  static String CHECK_OUT = '/check_ot';

  static List<GetPage> AppRoutesList() {
    return [
      GetPage(name: INITAL_SCREEN, page: () => SplashScreen()),
      GetPage(name: SIGN_IN, page: () => SignInScreen()),
      GetPage(name: SIGN_UP, page: () => SignUpScreen()),
      GetPage(name: DISPLAY, page: () => DisplayScreen()),
      GetPage(name: PRODUCT_DETAILS, page: () => ProductDetails()),
      GetPage(name: CART, page: () => CartScreen()),
      GetPage(name: CHECK_OUT, page: () => CheckOutScreen()),
    ];
  }
}
