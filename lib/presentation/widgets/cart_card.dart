import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/screen/_functions/functions.dart';
import 'package:e_commerce/presentation/widgets/product_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimenson.padding, right: AppDimenson.padding),
      child: Container(
        height: AppDimenson.cart_card_height,
        decoration: BoxDecoration(
            boxShadow: [
              AppUiFunction.shadow(
                  spreadRadius: 5, blurRadius: 5, offset: Offset(1, 5))
            ],
            borderRadius: BorderRadius.all(Radius.circular(AppDimenson.radius)),
            color: Colors.white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: Center(
                  child: SvgPicture.asset(
                    AppAsset.chair,
                    height: 80,
                    width: 80,
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nashville Armchair",
                  style: GoogleFonts.spartan(
                      textStyle: Get.textTheme.bodyText1,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold),
                ),
                AppSpaces.spaces_height_5,
                Row(
                  children: [
                    Text("Quantity : ",
                        style: GoogleFonts.spartan(
                          textStyle: Get.textTheme.bodyText1,
                        )),
                    ProductQuantity(
                      iconSize: 10,
                      boxSize: 20,
                      spaces: 10,
                    ),
                  ],
                ),
                AppSpaces.spaces_height_5,
                Text("Color : Roy blue",
                    style: GoogleFonts.spartan(
                      textStyle: Get.textTheme.bodyText1,
                    )),
                AppSpaces.spaces_height_5,
                Row(
                  children: [
                    SvgPicture.asset(AppAsset.delete),
                    AppSpaces.spaces_width_5,
                    Text("R E M O V E",
                        style: GoogleFonts.spartan(
                          textStyle: Get.textTheme.bodyText1,
                          color: AppColors.primaryColor,
                        )),
                  ],
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "\$ 1700",
                    style: TextStyle(color: AppColors.primaryColor),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
