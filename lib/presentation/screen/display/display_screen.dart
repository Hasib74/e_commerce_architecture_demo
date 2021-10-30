import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/presentation/screen/_functions/functions.dart';
import 'package:e_commerce/presentation/screen/cart/cart_screen.dart';
import 'package:e_commerce/presentation/screen/display/_controller/display_controller.dart';
import 'package:e_commerce/presentation/screen/display/widget/display_bottom_bar.dart';
import 'package:e_commerce/presentation/screen/fav/fav_screen.dart';
import 'package:e_commerce/presentation/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(DisplayController());

    return Stack(
      children: [
        Positioned.fill(child: _body()),
        const Positioned(
            bottom: 0.0, right: 0.0, left: 0.0, child: DisplayBottomBar()),
      ],
    );
  }

  Widget _body() {
    return Obx(() {
      Widget _page;

      switch (DisplayController.to.currentPage.value) {
        case CurrentPage.HOME:
          _page = const HomeScreen();
          break;
        /*case CurrentPage.CART:
          _page = CartScreen();
          break;*/
        case CurrentPage.FAV:
          _page = FavScreen();
          break;
        default:
          _page = const HomeScreen();
          break;
      }
      return _page;
    });
  }
}
