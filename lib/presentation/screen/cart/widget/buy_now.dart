import 'package:e_commerce/core/language/language.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/app_routes/app_routes.dart';
import 'package:e_commerce/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyNowButton extends StatelessWidget {
  final int totalItem;

  final double price;

  BuyNowButton({this.price = 1289.0, this.totalItem = 6});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(AppRoutes.CHECK_OUT),
      child: Container(
        height: AppDimenson.buy_now_button_height,
        decoration: BoxDecoration(
            color: AppColors.buy_button_color.withOpacity(0.3),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(AppDimenson.radius),
                topLeft: Radius.circular(AppDimenson.radius))),
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '${Language.total_price_for}${' ${totalItem.toString()} '}${Language.items}',
                        style: GoogleFonts.spartan(
                          textStyle: Get.textTheme.bodyText1,
                          color: Colors.black,
                        ),
                      ),
                      AppSpaces.spaces_height_15,
                      Text(
                        '\$ ${price.toString()}',
                        style: GoogleFonts.spartan(
                          textStyle: Get.textTheme.headline2,
                          color: AppColors.primaryColor,
                        ),
                      )
                    ],
                  ),
                  AppButton(
                      borderRadius: 10,
                      height: 40,
                      width: 120,
                      text: "BUY NOW",
                      padding: 0,
                      textStyle: Get.textTheme.headline1!
                          .copyWith(color: Colors.white, letterSpacing: 0.3))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
