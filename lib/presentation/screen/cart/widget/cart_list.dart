import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/screen/_functions/functions.dart';
import 'package:e_commerce/presentation/widgets/cart_card.dart';
import 'package:e_commerce/presentation/widgets/product_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_, int index) {
            return CartCard();
          },
          separatorBuilder: (_, int index) {
            if (index == 6) {
              printInfo(info: "Last Index ${index.toString()}");
              return Column(
                children: [
                  AppSpaces.spaces_height_25,
                  AppSpaces.spaces_height_25
                ],
              );
            } else {
              return AppSpaces.spaces_height_15;
            }
          },
          itemCount: 6),
    );
  }
}
