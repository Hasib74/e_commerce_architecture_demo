import 'package:e_commerce/core/utils/app_assets/app_assets.dart';
import 'package:e_commerce/core/utils/app_colors/app_colors.dart';
import 'package:e_commerce/core/utils/app_spaces/app_spaces.dart';
import 'package:e_commerce/presentation/screen/_functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppProductCard extends StatelessWidget {
  final String imageUrl;

  final String name;

  final String category;

  final String price;

  final VoidCallback? onTap;

  final VoidCallback? onfavBtnTap;

  const AppProductCard(
      {Key? key,
      this.imageUrl = "",
      this.onTap,
      this.price = "1020",
      this.category = "Mordern Saddle Arms",
      this.name = "Wingback Chair",
      this.onfavBtnTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  AppUiFunction.shadow(
                    spreadRadius: 5,
                  )
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: _image(),
                  ),
                  Expanded(child: _name_category_price())
                ],
              ),
            ),
            Positioned(
                bottom: 5,
                right: 10,
                child: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Center(
                    child: SvgPicture.asset(AppAsset.fav),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget _image() {
    if (imageUrl.isNotEmpty) {
      return Image(image: NetworkImage(imageUrl));
    } else {
      return SvgPicture.asset(AppAsset.chair);
    }
  }

  Widget _name_category_price() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSpaces.spaces_height_10,
        Text(
          name,
          style: GoogleFonts.playfairDisplay(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        AppSpaces.spaces_height_5,
        Text(
          category,
          style: GoogleFonts.spartan(fontSize: 10),
        ),
        AppSpaces.spaces_height_10,
        Text("\$ $price",
            style: GoogleFonts.spartan(
                fontSize: 18, color: AppColors.primaryColor)),
      ],
    );
  }
}
