import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/app_routes/app_routes.dart';
import 'package:e_commerce/presentation/screen/_functions/functions.dart';
import 'package:e_commerce/presentation/screen/display/_controller/display_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DisplayBottomBar extends StatelessWidget {
  const DisplayBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimenson.bottom_bar_size,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primaryColor,
          onPressed: () {
            DisplayController.to.currentPage.value = CurrentPage.FAV;
          },
          child: SvgPicture.asset(AppAsset.fav),
        ),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 5,
            color: AppColors.displayBottomColor,
            // ignore: sized_box_for_whitespace
            child: Container(
              height: AppDimenson.bottom_bar_size,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => DisplayController.to.currentPage.value =
                        CurrentPage.HOME,
                    child: SvgPicture.asset(
                      AppAsset.home,
                      color: Colors.black,
                    ),
                  ),
                  AppSpaces.spaces_width_5,
                  AppSpaces.spaces_width_5,
                  InkWell(
                      onTap: () => Get.toNamed(AppRoutes.CART),
                      child: SvgPicture.asset(AppAsset.cart)),
                ],
              ),
            )),
      ),
    );
  }
}
