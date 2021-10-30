import 'package:e_commerce/core/language/language.dart';
import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/screen/_functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddToCartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          boxShadow: [
            AppUiFunction.shadow(),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAsset.cart_two),
          AppSpaces.spaces_width_10,
          Text(
            Language.add_to_cart,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
