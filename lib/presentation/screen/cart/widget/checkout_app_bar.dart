import 'package:e_commerce/core/language/language.dart';
import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_dimension/app_dimenson.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppDimenson.padding),
      height: AppDimenson.app_bar_height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () => Get.back(),
              child: SvgPicture.asset(AppAsset.back, color: Colors.black)),
          Text(
            Language.carts.toUpperCase(),
            style: GoogleFonts.spartan(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            AppAsset.fav,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
